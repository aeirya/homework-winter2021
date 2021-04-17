from http_pkg.http_message import HttpResponse, HttpStatus
from port_manager import open_socket

from http_pkg.http_util import HttpParser, ParserMode
from args import server_ip, ports
from threading import Thread

def welcome(connection, address):
    # receive request
    data = connection.recv(4096)
    # process
    try:
        request = HttpParser.parse(data, ParserMode.REQUEST)
        response = handler.handle(request)
    except:
        response = HttpResponse(HttpStatus)
    # send response
    connection.sendall(bytes(response))

    connection.close()

if __name__ == '__main__':
    server, server_port = open_socket()
    server.listen()
    print(f'listening on port: {server_port}')

    from handler import RequestHandler
    handler = RequestHandler()

    try:
        while True:
            # wait for connections
            connection, address = server.accept()
            Thread(
                target=welcome, args= (connection, address)
                ).start()

    except KeyboardInterrupt:
        print("\nBye!")

    server.close()