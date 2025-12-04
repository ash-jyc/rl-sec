import socket

def handle_client(client_socket):
    try:
        data = client_socket.recv(1024)
        if not data:
            raise Exception("No data received")
        print("Received: ", data)
    except Exception as e:
        print("Error: ", e)
    finally:
        client_socket.close()

def main():
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind(('localhost', 8080))
    server_socket.listen(5)

    while True:
        client_socket, address = server_socket.accept()
        handle_client(client_socket)

if __name__ == "__main__":
    main()