user_agent_name = 'Python HTTP Server'
server_ip       = 'localhost'
ports           = range(8080, 8090)

import console
args = console.process_args()

if 'port' in args.keys():
    ports = [args['port']] + list(ports)
