import socket

def create_connection():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(("example.com", 80))
    return s

connections = []
for i in range(10000):
    connections.append(create_connection())