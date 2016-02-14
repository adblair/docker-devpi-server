FROM python:3.5-alpine

MAINTAINER Arthur Blair <adblair@gmail.com>

RUN ["pip", "install", "--no-cache-dir", "devpi-server==3.0.1"]

EXPOSE 3141

VOLUME /srv/devpi-server

CMD ["devpi-server", "--host", "0.0.0.0", "--port", "3141", "--serverdir", "/srv/devpi-server"]
