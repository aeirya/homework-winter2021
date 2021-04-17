from socket import socket, AF_INET, SOCK_STREAM
from threading import Thread
import threading
import time

server_ip_port = 'localhost', 8080

# users = [(client_i, address_i)]
users = []
queue = []

is_active = True

def start_listening():
    # tcp socket
    server = socket(AF_INET, SOCK_STREAM)
    # listen on port (tcp welcomer) 
    server.bind(server_ip_port)
    # maximum number of connections
    server.listen(2)
    # start listening
    thread = Thread(target= accept_connections)
    thread.start()
    return server

def accept_connections():
    print("started listening..")
    while is_active:
        client, address = server.accept()
        users.append(client)
        queue_user(client)
    server.close()

def receive_message(connection : socket, callback):
    bufsize = 4096
    while is_active:
        data = connection.recv(bufsize)
        if not data:
            break
        message = data.decode('utf-8')
        on_receive_message(connection, message)
        callback(connection, message)
    
    connection.close()
        
def on_receive_message(self : socket, message : str):
    if (message == "Bye"):
        self.close()
    if (message == "Reject"):

def send_message(connection : socket, message : str):
    connection.send(message.encode())  

def queue_user(user : socket):
    queue.append(user)
    while len(queue) >= 2:
        match_users(queue.pop(0), queue.pop(0))

def match_users(userA : socket, userB : socket):
    listen_to_client(userA, callback = lambda con, message : send_message(userB, message))
    listen_to_client(userB, callback = lambda con, message : send_message(userA, message))
        

def listen_to_client(client, callback):
    thread = Thread(target= lambda : receive_message(client, callback))
    thread.start()

def stop():
    global is_active
    is_active = False

    server.close()

server = start_listening()

while is_active:
    try:
        command = input()
        if command == "q":
            stop()
    except KeyboardInterrupt:
        break