class HttpParser:
    buffer : bytes

    def feed(self, b : bytes):
        self.buffer += b
    
    def next_line(self):
        self.
        i = self.buffer.find(b'\n')
