FROM ubuntu:14.04

MAINTAINER Arthur Blair <adblair@gmail.com>

ADD https://bootstrap.pypa.io/get-pip.py /get-pip.py

RUN python3 /get-pip.py

RUN pip install devpi-server==2.2.2 devpi-web==2.4.1

EXPOSE 3141

VOLUME /srv/devpi-server

CMD ["devpi-server", "--host", "0.0.0.0", "--port", "3141", "--serverdir", "/srv/devpi-server"]
