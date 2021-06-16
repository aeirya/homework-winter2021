# ethernet

## 1 
source: 00:d0:59:a9:3d:68

## 2
destination: 00:06:25:da:af:73
no, router does

## 3
protocol: 0x00000800
IPv4

## 4
54'th Byte

## 5
source: 00:06:25:da:af:73
no, router does

## 6
destination: 00:d0:59:a9:3d:68
yes

## 7
protocol: 0x00000800
IPv4

## 8
13

# ARP

## 9
? (192.168.43.1) at be:a5:8b:d0:e5:df on en0 ifscope [ethernet]
? (192.168.43.29) at 3c:22:fb:42:f1:94 on en0 ifscope permanent [ethernet]
? (192.168.43.255) at ff:ff:ff:ff:ff:ff on en0 ifscope [ethernet]
? (224.0.0.251) at 1:0:5e:0:0:fb on en0 ifscope permanent [ethernet]
? (239.255.255.250) at 1:0:5e:7f:ff:fa on en0 ifscope permanent [ethernet]

IP | MAC | interface name | static/dynamic (wheter entry gets cleared)| interface type(eth, wifi, ...)

## 10
src: 00:d0:59:a9:3d:68
dest: ff:ff:ff:ff:ff:ff

## 11
type: 0x00000806

## 12
20 bytes from the beginning
yes it inclues sender's ip
target MAC address is set to 00:00:00:00:00:00

## 13
20 btyes from the start of frame
sender MAC address field (which is set to 00:06:25:da:af:73)

## 14
src: 00:06:25:da:af:73
dest: 00:d0:59:a9:3d:68

# 15
first i did a broadcast and pinged all hosts in my local network.
then i checked arp cache every 10 minutes. 
the clearance (of the entry of the device with ip 192.168.43.41) took 22-32 minutes to happen.