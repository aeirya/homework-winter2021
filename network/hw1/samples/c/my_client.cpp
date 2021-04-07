#include <stdio.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <unistd.h> 
#include <string.h> 

#define PORT 8080 

int main(int argc, char const *argv[]) {
    sockaddr_in server_address;
    server_address.sin_addr = 
}