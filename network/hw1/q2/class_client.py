from socket import socket, AF_INET, SOCK_STREAM, error
from threading import Event, Thread
from time import sleep

server_address = 'localhost', 8081

def connect():
    client = socket(AF_INET, SOCK_STREAM)
    client.connect(server_address)
    return client

def send(message : str):
    client.send(str.encode(message, 'utf-8'))

def receive() -> str:
    bufsize = 4096
    data = client.recv(bufsize)
    return data.decode('utf-8')

def listen():
    while True:
        try:
            msg = receive()
            if not msg:
                continue
            me.receive(msg)
        except error:
            break

class Client:
    is_welcomed: bool
    is_ready : bool
    server : socket

    def __init__(self, server):
        self.is_welcomed = False
        self.is_ready = False

    def send(self, msg):
        
        if not self.is_ready:
            if self.is_welcomed and msg == 'Reject':
                   user_leave.set()
            elif msg == 'Hi':
                self.is_ready = True
            else:
                return
        else:
            if msg == 'Bye':
                user_leave.set()
        send(msg)

    def receive(self, msg):
        
        if not self.is_welcomed:
            if msg == 'Hi':
                self.is_welcomed = True
            elif msg == 'Reject':
                user_leave.set()
        else:
            if msg == 'Bye':
                user_leave.set()
        print('-> ' + msg)

user_leave = Event()
client = connect()
me = Client(client)
Thread(target= listen).start()

try:
    while True:
        msg = input()
        if user_leave.is_set():
            client.close()
            break
        me.send(msg)
except KeyboardInterrupt:
    try:
        client.close()
    except error:
        pass

