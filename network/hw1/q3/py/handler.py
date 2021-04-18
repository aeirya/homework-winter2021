from http_pkg.http_message import HttpRequest, HttpResponse, HttpStatus
from file import query_file
from server import contact_servers
from args import user_agent_name

def get_file(request : HttpRequest):
    if request.file == '/':
        return query_file('/index.html')
    try:
        return query_file(request.file)
    except FileNotFoundError:
        if request['User-Agent'] != user_agent_name:
            return contact_servers(request.file)
    return None

def pack_file(file : bytes) -> HttpResponse:
    '''
        deprecated
    '''
    response = HttpResponse(HttpStatus.OK)
    response['Content-Size'] = len(file)
    response.body = file
    return response

class RequestHandler:

    def handle(self, request) -> HttpResponse:
        methods = {
            "GET" : self.get,
            "HEAD" : self.head
        }
        
        if request.method not in methods.keys():
            response = HttpResponse(HttpStatus.METHOD_NOT_ALLOWED)
        else:
            response = methods[request.method](request)
    
        # insert time
        from datetime import datetime
        dt = datetime.now()
        date = dt.strftime('%b %d %Y at %I:%M%p')
        response['Date'] = date

        return response

    def head(self, request : HttpRequest):
        res = self.get(request)
        res.body = b''
        return res
        
    def get(self, request : HttpRequest):
        file = get_file(request)
        
        if file is None:
            return HttpResponse(HttpStatus.NOT_FOUND)
            
        res = HttpResponse(HttpStatus.OK, body = file)
        
        # insert content length
        res['Content-Length'] = len(res.body)

        # insert file format header
        if request.file.find('.') >= 0:
            fformat = request.file.split('.')[-1]
            if fformat in ['png', 'jpg']:
                res['Content-Type'] = f'image/{fformat}'

        return res
