from args import ports, server_ip
from connection import HttpConnection

def contact_servers(file: str):
    '''
        contacts servers and requests the file 
    '''
    from socket import error

    for target_port in ports:
        # if server_port == target_port:
        #     continue
        try:
            conn = HttpConnection(server_ip, target_port)
            data = conn.request_file(file)

            if data is not None:
                return data 

        except error as e:
            if e.errno == 61:
                # connection refused
                continue
            raise
    return None

