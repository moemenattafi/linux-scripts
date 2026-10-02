#!/usr/bin/env python3

"""Simple Http server for systemd service."""

import http.server
import sys
import os 

class Handler(http.server.SimpleHTTPRequestHandler):
	def do_GET(self):
		if self.path == '/health':
			self.send_response(200)
			self.end_headers()
			self.wfile.write(b'OK\n')
		else:
			self.send_response(200)
			self.end_headers()
			msg = f"Hello from systemd service! PID={os.getpid()}\n"
			self.wfile.write(msg.encode())
	def log_message(self, format, *args):
		sys.stdout.write(f"{self.address_string()} - {format%args}\n")
		sys.stdout.flush()

if __name__ == '__main__':
	port = int(os.environ.get('PORT', 9999))
	print(f'Starting server on port {port}',flush=True)
	server = http.server.HTTPServer(('', port) ,Handler)
	server.serve_forever()
