from socket import socket, AF_INET, SOCK_STREAM
from threading import Thread
from typing import List

server_ip_port = 'localhost', 8080

# tcp socket
server = socket(AF_INET, SOCK_STREAM)
# listen on port (tcp welcomer) 
server.bind(server_ip_port)
# maximum number of connections
server.listen(2)
# start listening
users : List[socket] = []
print("started listening...")
while len(users) < 2:
    client, addr = server.accept()
    users.append(client)

# on both users connected:
pairs = {
    0 : 1,
    1 : 0
}

def close_connection(conn : socket):
    conn.shutdown(2)
    conn.close()

def listen(user : socket, id : int):
    def do_listen():
        pair : socket = users[pairs[id]]
        while True:
            try:
                msg = user.recv(4096).decode("utf-8")
                if not msg: 
                    break
                if msg == "Reject":
                    pair.send("server: maybe next time =))")
                    break
                if msg == "Bye":
                    pair.send("bye!")
                    pair.send("server: terminating the connection")
                    close_connection(pair)
                    close_connection(user)
                    break
                else:
                    pair.send(msg)
            except socket.error as e:
                print(e)
                pair.send("server: your friend has disconnected!")

    Thread(target= do_listen).start()

listen(users[0], 0)
listen(users[1], 1)

server.close()