import socket
import os

SOCKET_PATH = "/tmp/demo.sock"
if os.path.exists(SOCKET_PATH):
	os.unlink(SOCKET_PATH)

server = socket.socket(socket.AF_UNIX,socket.SOCK_STREAM)
bind = server.bind(SOCKET_PATH)
os.chmod(SOCKET_PATH,0o666)
server.listen(5)

print(f"Listening on {SOCKET_PATH}")
while True:
	conn,addr = server.accept()
	data = conn.recv(1024)
	print(f"Received Data : {data.decode()!r}")
	conn.sendall(b"Echo: " + data)
	conn.close()

