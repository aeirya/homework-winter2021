import console
from socket import socket
from typing import IO, List, Tuple

args = console.process_args()
# args.get('port', 8080)

def open_socket(ip = 'localhost', port_list = range(8080, 8090)) -> Tuple[socket, int]:
    '''
        tries different ports,
        returns a socket and its port on success
    '''
    from socket import socket, AF_INET, SOCK_STREAM, error
    server = socket(AF_INET, SOCK_STREAM)

    for port in port_list:
        try:
            server.bind((ip, port))
            return server, port
        except error as e:
            if e.errno == 48:
                # address already in use
                continue
    raise ConnectionError("could not open port")

server, port = open_socket()
server.listen()
print(port)

from http_pkg.http_util import HttpParser, HttpPipeline, ParserMode
from http_pkg.http_message import HttpMessage, HttpRequest, HttpResponse, HttpStatus

def request_file(server : socket, file : str):
    request = HttpRequest('GET', file)
    server.sendall(bytes(request))
    data = server.recv(4096)
    return data

def contact_servers(file: str):
    server_ip = 'localhost'
    from socket import socket, AF_INET, SOCK_STREAM, error
    tcp = socket(AF_INET, SOCK_STREAM)
    for port in range(8080, 8090):
        try:
            tcp.connect((server_ip, port))
            data = request_file(tcp, file)
            response = HttpParser.parse(data, ParserMode.RESPONSE)
            if response.status == HttpStatus.OK:
                return response.body
        except error as e:
            if e.errno == 61:
                # connection refused
                continue
            raise
    return None

def read_file(file : str):
    data = b''
    with open(file, 'rb') as reader:
        data = reader.read()
    return data

def fetch_file(file: str):
    import os
    if os.path.exists(file):
        return read_file(file)
    else:
        return contact_servers(file)

try:
    while True:
        connection, address = server.accept()
        data = b''
        data = connection.recv(4096)
        request = HttpParser.parse(data, ParserMode.REQUEST)
        data = None
        if request.method == "GET":
            if request.file == '/':
                data = fetch_file("index.html")
            else:
                data = fetch_file(f"{args['resource']}/{request.file}")

        response = HttpResponse(HttpStatus.OK)
        response.body = data
        connection.sendall(bytes(response))
        connection.close()
        # print(request.head())
        print(request.head())

        print(bytes(response).__str__())
                

        # while parser.has_line():
        #     line = parser.next_line()
            # field, value = parser.next()
            # request[field] = value
            # print(parser.next_line())


        #     print(line)
        # http_version, code, status = 

except KeyboardInterrupt:
    print("\nBye!")

server.close()