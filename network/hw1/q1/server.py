import socket

localIP    = "localhost"
localPort  = 8080
bufferSize = 1024

# Create a datagram socket
server = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)

# Bind to address and ip
server.bind((localIP, localPort))

print("server listening...")

# Listen for incoming datagrams
while(True):
    message, address = server.recvfrom(bufferSize)

    # Sending a reply to client
    server.sendto(message, address)

server.close()