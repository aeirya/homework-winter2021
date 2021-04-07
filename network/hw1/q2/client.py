from socket import socket, AF_INET, SOCK_STREAM

# connects to server
def connect():
    server_address = 'localhost', 8080
    # tcp connection
    client = socket(AF_INET, SOCK_STREAM)
    client.connect(server_address)
    return client

client = connect()
client.send(str.encode("HI"))
client.close()