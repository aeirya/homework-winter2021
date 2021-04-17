def process_args() -> dict:
    args = {}

    from sys import argv
    # first arg = scriptname neglected
    for arg in argv[1:]:
        if arg.isdigit():
            args['port'] = int(arg)
        else:
            if arg.find('.py') < 0:
                args['root'] = arg
    
    return args
