from socket import socket, AF_INET, SOCK_STREAM
import sys
from threading import Thread

server_address = 'localhost', 8080

# connects to server
def connect():
    # tcp connection
    client = socket(AF_INET, SOCK_STREAM)
    client.connect(server_address)
    return client

def send(message : str):
    client.send(str.encode(message))

def receive() -> str:
    bufsize = 4096
    data = client.recv(bufsize)
    return data.decode('utf-8')

def listen():
    global is_active
    while is_active:
        try:
            msg = receive()
            if not msg:
                continue
            print("-> " + msg)
            if msg == 'Bye':
                client.close()
                quit(0)
        except socket.error:
            break
            
is_active = True

client = connect()
send("Hi")
Thread(target=listen).start()

while is_active:
    try:
        send(input())
    except KeyboardInterrupt:
        print("\nkeyboard interrupt.. c u then!")
        is_active = False

client.close()

