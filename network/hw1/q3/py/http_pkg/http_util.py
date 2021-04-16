from typing import Tuple

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

class HttpParser:
    @staticmethod
    def parse(data):

#     pipe : HttpPipeline

#     def __init__(self):
#         self.pipe = HttpPipeline()

#     def reached_body(self):
#         return self.pipe.next_line

#     def next(self) -> Tuple[str, str]:
#         return self.next_line().split(b': ', 1)