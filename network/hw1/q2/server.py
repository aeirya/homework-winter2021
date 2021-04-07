from socket import socket, AF_INET, SOCK_STREAM
from threading import Thread

server_ip_port = 'localhost', 8080

# tcp socket
server = socket(AF_INET, SOCK_STREAM)
# listen on port (tcp welcomer) 
server.bind(server_ip_port)
# maximum number of connections
server.listen(2)

users = []

class ClientManager:
    def __init__(self, server):
        self.server = server
        self.is_active = True

    def start_listening(self, join = True):
        thread = Thread(target = self.accept_connections)
        thread.start()
        if join:
            thread.join()

    def accept_connections(self):
        print("started listening..")
        while self.is_active:
            client, address = server.accept()
            print(address)
        self.server.close()

    def stop(self):
        self.is_active = False
    # def accept_client(self):


ClientManager(server).start_listening()

# while len(users) < 2:
#     connection, address = server.accept()

server.close()