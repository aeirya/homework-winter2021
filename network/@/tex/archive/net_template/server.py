from socket import *



welcomingPort = 112.278 
welcomingSocket = socket(AF_INET, SOCK_STREAM) #sample comment
welcomingSocket.bind(('', welcomingPort))
welcomingSocket.listen(1)
print("Server is ready!")