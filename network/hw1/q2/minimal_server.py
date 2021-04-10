from socket import close, socket, AF_INET, SOCK_STREAM, error
from threading import Thread
from typing import List
from time import sleep, thread_time

server_ip_port = 'localhost', 8080

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
    conn.shutdown(2)
    conn.close()

def send(pair : socket, msg : str):
    pair.send(msg.encode())

def disconnect_users():
    global users_connected
    users_connected = False

def listen(user : socket, id : int):
    def do_listen():
        pair : socket = users[pairs[id]]
        while True:
            try:
                msg = user.recv(4096).decode("utf-8")
                if not msg: 
                    print("not'ing")
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
                # print(e)
                send(pair, "server: your friend has disconnected!\n")
                close_connection(user)
                global users_connected
                users_connected = False
                break

    Thread(target= do_listen).start()

users_connected = False
is_active = True
users : List[socket] = []

while is_active:

    # start listening
    print("started listening...")
    while len(users) < 2:
        client, addr = server.accept()
        users.append(client)
    
    users_connected = True

    listen(users[0], 0)
    listen(users[1], 1)

    while users_connected:
        sleep(1.5)

    users.pop()
    users.pop()

print("closing the server :p")
server.close()