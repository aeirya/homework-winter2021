from socket import socket, AF_INET, SOCK_STREAM, error
from threading import Thread

server_address = 'localhost', 8081
is_active = True

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
    while True:
        try:
            msg = receive()
            if not msg:
                continue
            print("-> " + msg)
            if msg == 'Bye':
                global is_active
                is_active = False
                break
        except error as e:
            print(e)
            break
    print("closing")
    client.close()
            
client = connect()
# send("Hi")
Thread(target=listen).start()

while True:
    try:
        msg = input()
        print(is_active)
        if is_active:
            send(msg)
        else:
            break
    except KeyboardInterrupt:
        print("\nkeyboard interrupt.. c u then!")
        is_active = False

