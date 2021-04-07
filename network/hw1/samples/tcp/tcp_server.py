import socket
serv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serv.bind(('0.0.0.0', 8080))
serv.listen(5)
while True:
    conn, addr = serv.accept()
    from_client = ''
    while True:
        data = conn.recv(4096)
        if not data: break
        d = data.decode('utf-8')
        from_client += d
        print(from_client)
        conn.send(str.encode("I am SERVER<br>"))
    conn.close()
    print('client disconnected')
