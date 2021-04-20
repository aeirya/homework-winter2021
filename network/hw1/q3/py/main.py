from http_pkg.http_message import HttpResponse, HttpStatus
from http_pkg.http_util import HttpParser, ParserMode

from port_manager import open_socket
from args import ports, server_ip

from threading import Thread

def welcome(connection, address, handler):
    '''
        gets called whenever a new request comes
    '''

    # receive request
    data = connection.recv(4096)
    # process
    try:
        request = HttpParser.parse(data, ParserMode.REQUEST)
        response = handler.handle(request)
    except:
        response = HttpResponse(HttpStatus.BAD_REQUEST)
    # send response
    connection.sendall(bytes(response))
    # done
    connection.close()


if __name__ == '__main__':
    
    # open socket
    server, server_port = open_socket(server_ip, port_list=ports)
    server.listen()
    print(f'listening on port: {server_port}')

    # object initiation
    from handler import RequestHandler
    handler = RequestHandler()

    try:
        while True:
            # wait for connections
            connection, address = server.accept()
            Thread(
                target=welcome, args= (connection, address, handler)
                ).start()

    except KeyboardInterrupt:
        print("\nBye!")

    server.close()
