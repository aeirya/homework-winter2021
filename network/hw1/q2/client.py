from socket import socket, AF_INET, SOCK_STREAM
import sys

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


client = connect()
send("Hi")

while True:
    msg = receive()
    if not msg:
        break
    print(msg)
    if msg == 'Bye':
        break

client.close()

