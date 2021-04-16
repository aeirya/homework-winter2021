from typing import Tuple
from enum import Enum
from http_pkg.http_message import HttpRequest, HttpResponse

class HttpPipeline:
    buffer : bytes

    def __init__(self):
        self.buffer = b''

    def feed(self, b : bytes):
        self.buffer += b
    
    def has_line(self):
        i = self.buffer.find(b'\r\n')
        return i >= 0

    def next_line(self):
        line, self.buffer = self.buffer.split(b'\r\n', 1)
        return line

class ParserMode(Enum):
    REQUEST = 'request',
    RESPONSE = 'response'

class HttpParser:
    @staticmethod
    def parse(data, mode : ParserMode):
        # ready pipeline
        pipeline = HttpPipeline()
        pipeline.feed(data)

        if mode == ParserMode.REQUEST:
            # digest request line
            method, file, version = [x.decode() for x in pipeline.next_line().split()]
            message = HttpRequest(method, file, version)

        if mode == ParserMode.RESPONSE:
            version, code, phrase = [x.decode() for x in pipeline.next_line().split()]
            message = HttpResponse(int(code), version)

        # digest head
        while pipeline.has_line():
            line = pipeline.next_line()
            if line == b'':
                # reached body
                break
            else:
                field, value = [x.decode() for x in line.split(b': ')]
                message[field] = value
        
        # digest body
        body = b''
        while pipeline.has_line():
            body += pipeline.next_line()
        message.body = body

        return message