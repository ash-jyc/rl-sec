import struct

def receive_and_process_data(sock):
    data = sock.recv(1024)
    unpacked_data = struct.unpack('>I', data)
    return unpacked_data[0]

def process_request(sock):
    while True:
        data = receive_and_process_data(sock)
        # Process the data...