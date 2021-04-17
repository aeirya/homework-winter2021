from typing import List
from socket import socket, AF_INET, SOCK_STREAM, error
from threading import Thread
from time import sleep

server_ip_port = 'localhost', 8081

# tcp socket
server = socket(AF_INET, SOCK_STREAM)
# listen on port (tcp welcomer) 
server.bind(server_ip_port)
# maximum number of connections
server.listen(2)

# on both users connected:
pairs = {
    0 : 1,
    1 : 0
}

def close_connection(conn : socket):
    # conn.shutdown(2)
    conn.close()

def send(pair : socket, msg : str):
    pair.send(msg.encode())

def disconnect_users():
    global users_connected
    users_connected = False

def listen(user : socket, id : int):
    def do_listen():
        pair : socket = users[pairs[id]]
        
        first_msg = True
        waitingForAccept = False

        while True:
            try:
                msg = user.recv(4096).decode("utf-8")
                if not msg: 
                    continue
                # if first_msg:
                #     if msg == "Hi":
                #         first_msg = False
                #         waitingForAccept = True
                
                # if waitingForAccept
                    
                if msg == "Reject":
                    send(pair, "server: maybe next time =))")
                    close_connection(pair)
                    close_connection(user)
                    disconnect_users()
                    break
                if msg == "Bye":
                    send(pair, "Bye")
                    send(pair, "\n server: terminating the connection\n")
                    close_connection(pair)
                    close_connection(user)
                    disconnect_users()
                    break
                else:
                    print("forwarding: "  + msg)
                    send(pair, msg)
            except error as e:
                print(e)
                send(pair, "server: your friend has disconnected!\n")
                close_connection(user)
                disconnect_users()
                break

    Thread(target= do_listen).start()

users_connected = False
is_active = True
users : List[socket] = []

try:
    while True:

        # start listening
        print("started listening...")
        while len(users) < 2:
            client, addr = server.accept()
            users.append(client)
        
        users_connected = True

        listen(users[0], 0)
        listen(users[1], 1)

        while users_connected:
            sleep(2)

        users.pop()
        users.pop()
except KeyboardInterrupt:
    print()

print("closing the server :p")
server.close()
    