from args import args

def read_file(file : str):
    data = b''
    with open(file, 'rb') as reader:
        data = reader.read()
    return data

def query_file(relative_path : str):
    import os
    if 'root' in args:
        file = os.getcwd() + '/' + args['root'] + relative_path
        if os.path.exists(file):
            return read_file(file)
   
    file = os.getcwd() + relative_path
    if os.path.exists(file):
        return read_file(file)

    raise FileNotFoundError
