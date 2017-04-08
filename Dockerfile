FROM python:2.7

MAINTAINER SoftInstigate <info@softinstigate.com>

WORKDIR /opt/lektor

RUN curl -sL https://deb.nodesource.com/setup_6.x > node_install.sh
RUN chmod +x ./node_install.sh
RUN ./node_install.sh
RUN apt-get install -y apt-utils nodejs
RUN npm install -g bower gulp grunt-cli
RUN virtualenv venv
RUN . venv/bin/activate
RUN pip install 'Lektor==2.3'
RUN pip install 'awscli==1.11.65'
