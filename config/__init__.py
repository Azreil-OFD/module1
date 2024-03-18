from waitress import serve
import hupper
import os
from .wsgi import application
import socket
import environ

env = environ.Env(
    # set casting, default value
    PORT=(int, 8000)
)
# reading .env file
environ.Env.read_env()


def get_local_ip():
    hostname = socket.gethostname()
    local_ip = socket.gethostbyname(hostname)
    return str(local_ip)


def main():
    reloader = hupper.start_reloader('config.main')
    print(f"Сервер запущен: http://{get_local_ip()}:{env('PORT')}")
    serve(application, host=get_local_ip(), port=env('PORT'))
