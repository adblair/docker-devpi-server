FROM ubuntu:14.04

MAINTAINER Arthur Blair <adblair@gmail.com>

ADD https://bootstrap.pypa.io/get-pip.py /get-pip.py

RUN python3 /get-pip.py

RUN pip install devpi-server==2.2.1 devpi-web==2.3.0

ENV PORT=3141 SERVERDIR=/srv/devpi-server

EXPOSE $PORT

VOLUME $SERVERDIR

CMD devpi-server --host 0.0.0.0 --port $PORT --serverdir $SERVERDIR
