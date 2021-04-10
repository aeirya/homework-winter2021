from socket import socket
from typing import List, Tuple

def check_args_for_port() -> int:
    from sys import argv
    arg = argv[-1]
    try:
        return int(arg)
    except ValueError:
        return -1

def open_socket() -> Tuple[socket, int]:
    from socket import socket, AF_INET, SOCK_STREAM, error
    server = socket(AF_INET, SOCK_STREAM)
    ports = list(range(8080, 8090))
    port = check_args_for_port()
    if port > 0:
        ports.insert(0, port)
    while len(ports) > 0:
        port = ports.pop(0)
        try:
            server.bind(("localhost", port))
            return server, port
        except error as e:
            if e.errno == 48:
                # address already in use
                continue
    raise ConnectionError("could not open port")

import enum
class HttpStatusCode(enum.Enum):
    OK = 200

    def __str__(self):
        return f"{self.value} {self.name}"

class HttpMessageBuilder:
    fields : List[str]
    body : str

    def __init__(self, status : HttpStatusCode):
        self.fields = []
        self.__insert_status_line(status)

    def insert_field(self, field, val):
        self.fields.append(field + ": " + str(val))

    # supposed to be called first
    def __insert_status_line(self, status_code : HttpStatusCode, http_ver = 1.1):
        http_ver = f"HTTP/{http_ver}"
        self.fields.append(f"{http_ver} {status_code}")

    def insert_body(self, body : str):
        self.body = body
    
    def build(self) -> str:
        return "\r\n".join(self.fields) \
            + ("" if self.body is None else f"\r\n\r\n{self.body}\r\n")

server, port = open_socket()
print("listening on port: " + str(port))

server.listen()

input()
server.close()