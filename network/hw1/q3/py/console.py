
def process_args() -> dict:
    args = {}

    from sys import argv
    # first arg = scriptname neglected
    for arg in argv[1:]:
        if arg.isdigit():
            args['port'] = int(arg)
        else:
            args['resource'] = arg
    
    return args

# def check_args_for_port() -> int:
#     arg = argv[-1]
#     try:
#         return int(arg)
#     except ValueError:
#         return -1

args = process_args()
print(args)