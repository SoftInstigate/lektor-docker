FROM python:2.7

MAINTAINER SoftInstigate <info@softinstigate.com>

WORKDIR /opt/lektor

RUN curl -sL https://deb.nodesource.com/setup_6.x > node_install.sh
RUN chmod +x ./node_install.sh && ./node_install.sh
RUN apt-get install -y apt-utils nodejs
RUN npm install -g bower
RUN virtualenv venv && . venv/bin/activate && pip install 'Lektor==2.3'
RUN pip install 'awscli==1.11.65'
