from socket import socket, AF_INET, SOCK_STREAM, error, timeout
from threading import Thread
from threading import Event
from time import sleep

server_ip_port = 'localhost', 8081
chat_end = Event()

class User:
    me : 'socket'
    pair : 'User'
    ready : bool
    welcomed : bool

    def __init__(self, me : socket):
        self.me = me
        self.ready = False
        self.welcomed = False

    def connect(self, pair):
        self.pair = pair

    def listen(self):
        try:
            while True:
                data = self.receive()
                if not data:
                    chat_end.set()
                    break
                
                print('forwarding: ' + data)
                if not self.ready or self.welcomed:
                    self.pair.send(data)

                self.on_listen(data)
                
                if not self.ready:
                    chat_end.set()
                    break
        except error:
            chat_end.set()

    # called when the client is sending something
    def on_listen(self, msg):
        if not self.ready:
            if msg == 'Hi':
                self.ready = True
            if msg == 'Reject':
                self.ready = False
        else:
            if msg == 'Bye':
                self.ready = False

    def send(self, msg):
        self.on_send(msg)
        self.me.send(msg.encode())

    # calls when we're to receive something!
    def on_send(self, msg):
        if not self.welcomed:
            if msg == 'Hi':
                self.welcomed = True
            if msg == 'Reject':
                self.welcomed = False
        else:
            if msg == 'Bye':
                self.welcomed = False

    def receive(self):
        '''
            receives msg from user client socket
        '''
        data = self.me.recv(4096)
        return data.decode()

try:
    # tcp socket
    server = socket(AF_INET, SOCK_STREAM)
    # listen on port (tcp welcomer) 
    server.bind(server_ip_port)
    # maximum number of connections
    server.listen(2)

    while True:
        print('waiting for clients to join.. ')

        # accepting new users
        user, _ = server.accept()
        pair, _ = server.accept()

        # user manager
        A = User(user)
        B = User(pair)

        A.connect(B)
        B.connect(A)    

        # start listening
        ta = Thread(target= A.listen)
        tb = Thread(target= B.listen)
        ta.start()
        tb.start()

        print('server listening.. ')

        # wait here until one closes the chat
        chat_end.clear()
        chat_end.wait()

        sleep(1)
        print('chat ended')

        # force quit sockets
        try:
            user.close()
        except error:
            pass
        try:
            pair.close()
        except error:
            pass

except KeyboardInterrupt:
    server.close()