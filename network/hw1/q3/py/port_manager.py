from typing import Tuple
from socket import socket

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
