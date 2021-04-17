import socket

message           = "throughput".encode()
serverAddressPort = "192.168.43.123", 8080
bufferSize        = 1024

# Create a UDP socket at client side
client = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)

def msg():
    client.sendto(message, serverAddressPort)

def recv():
    client.recvfrom(bufferSize)

n = len(message)

from time import time

# 1-1
times = []

for _ in range(10):
    start = time()
    msg()
    recv()
    times.append(time()-start)

avg_time = sum(times)/10
print(f"1-1: {avg_time/n}")

# 1-2
start = time()

for _ in range(10):
    msg()
    recv()

avg_time = (time() - start)/10
print(f"1-2: {avg_time/n}")

# 1-3
start = time()
client.sendto(("throughtput"*10).encode(), serverAddressPort)
recv()
duration = time() - start
print(f"1-3: {duration/(n*10)}")

# 1-4
start = time()
client.sendto(("throughtput"*100).encode(), serverAddressPort)
recv()
duration = time() - start
print(f"1-4: {duration/(n*100)}")

client.close()
