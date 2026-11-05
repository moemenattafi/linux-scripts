import socket
import sys

SOCKET_PATH = '/tmp/demo.sock'
message = sys.argv[1] if len(sys.argv) > 1 else "Hello!\n";
client = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
client.connect(SOCKET_PATH)
client.sendall(message.encode())
response = client.recv(1024)
print(f"Response: {response.decode()!r}")
client.close();
