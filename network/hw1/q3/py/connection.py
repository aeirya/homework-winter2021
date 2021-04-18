from typing import Tuple
from socket import socket, AF_INET, SOCK_STREAM, error
from http_pkg.http_message import HttpRequest, HttpResponse, HttpStatus
from http_pkg.http_util import HttpParser, ParserMode
from args import user_agent_name

def send(server : socket, request : HttpRequest):
    server.sendall(bytes(request))

def sign(request):
    # sign with name
    request['User-Agent'] = user_agent_name 

def get_head(server, file):
    ## first receive file header
    request = HttpRequest('HEAD', file)
    sign(request)
    # send head request
    send(server, request)
    # receive
    data = server.recv(4096)
    # parse
    response = HttpParser.parse(data, ParserMode.RESPONSE)
    return response

def get_file(server, file, content_length):
    # receive complete file
    request = HttpRequest('GET', file)
    # send get
    send(server, request)
    
    # receive head part
    received = 0
    data = server.recv(4096)
    header = data.split(b'\r\n')[:-1]
    received += len(data) - len(header)
    
    # receive body part
    while received < content_length:
        rec = server.recv(4096)
        received += len(rec)
        data += rec
        
    response = HttpParser.parse(data, ParserMode.RESPONSE)
    return response.body

class HttpConnection:
    ip_port : Tuple[str, int]

    def __init__(self, ip : str, port : int):
        self.ip_port = ip,port

    def connect(self):
        con = socket(AF_INET, SOCK_STREAM)
        con.connect(self.ip_port)
        return con

    def request(self, req : HttpRequest) -> HttpResponse:
        server = self.connect()
        server.sendall(bytes(req))
        res = server.recv(4096)
        server.close()
        return HttpParser.parse(res, ParserMode.RESPONSE)

    def request_file(self, file : str):
        server = self.connect()
        head = get_head(server, file)
        server.close()

        # if head reponse is ok, knowing the content legth, send get request
        if head.status == HttpStatus.OK:
            content_length = int(head['Content-Length'])
            server = self.connect()
            file = get_file(server, file, content_length)
            server.close()
            return file

        elif head.status == HttpStatus.NOT_FOUND:
            return None
