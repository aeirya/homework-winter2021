from enum import IntEnum

class HttpMessage:
    header : dict
    body : bytes
    http_ver : float

    def __init__(self, body = '', header = None, http_ver = 1.1):
        # init header
        if header is not None:
            self.header = header
        else:
            self.header = {}
        
        # init body
        if type(body) is str:
            self.body = body.encode()
        elif type(body) is bytes:
            self.body = body
        else:
            self.body = b''

        # http version
        if type(http_ver) is str:
            self.http_ver = float(http_ver.split('/')[1])
        else:
            self.http_ver = http_ver

    # [] get operator
    def __getitem__(self, key):
        if key == 'body':
            return self.body
        return self.header.get(key, None)
    
    # [] set operator
    def __setitem__(self, key, value):
        if key == 'body':
            self.body = value
        else:
            self.header[key] = value
    
    # header string
    def head(self) -> str:
        return ''.join([f'{key}: {val}\r\n' for key,val in self.header.items()])
    
    # to bytes
    def __bytes__(self):
        if not self.body:
            return self.head().encode()
        else:
            return (self.head() + '\r\n').encode() + self.body

class HttpRequest(HttpMessage):
    method : str
    file : str

    def __init__(self, method, file, http_ver = 1.1):
        super().__init__(http_ver)
        self.method = method
        self.file = file

    def request_line(self) -> str:
        return f'{self.method} {self.file} HTTP/{self.http_ver}\r\n'

    def __bytes__(self):
        return self.request_line().encode() + super().__bytes__() 

    def to_bytes(self) -> bytes:
        return bytes(self)

class HttpStatus(IntEnum):
    OK = 200
    NOT_FOUND = 404
    BAD_REQUEST = 400
    METHOD_NOT_ALLOWED = 405

    def to_sentence(self):
        return ' '.join([x.lower().capitalize() for x in self.name.split('_')])

    def __str__(self):
        return f"{self.value} {self.to_sentence()}"

class HttpResponse(HttpMessage):
    status : HttpStatus

    def __init__(self, status : HttpStatus, http_ver = 1.1, body = b''):
        super().__init__(http_ver= http_ver, body= body)
        self.status = status

    def status_line(self) -> str:
        return f'HTTP/{self.http_ver} ' + str(self.status) + '\r\n'

    def __bytes__(self):
        return self.status_line().encode() + super().__bytes__()


# # tests
# if __name__ == "__main__":
#     msg = HttpRequest("GET", "aeirya.txt")

#     print(bytes(msg).decode())

#     msg = HttpResponse(HttpStatus.OK, 'here you are')
#     msg['Content-Length'] = 1024
#     msg['Type'] = 'test'
#     print(bytes(msg).decode())

# sta = HttpStatus.BAD_REQUEST
# stt = HttpStatus.METHOD_NOT_ALLOWED

# print(sta)
# print(stt)
