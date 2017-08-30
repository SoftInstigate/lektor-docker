FROM python:2.7

MAINTAINER SoftInstigate <info@softinstigate.com>

WORKDIR /opt/lektor

RUN curl -sL https://deb.nodesource.com/setup_6.x > node_install.sh
RUN chmod +x ./node_install.sh
RUN ./node_install.sh
RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y apt-utils nodejs yarn
RUN yarn global add typings@2.x bower@1.x gulp@3.x grunt-cli@1.x
RUN virtualenv venv
RUN . venv/bin/activate
RUN pip install 'Lektor==2.3'
RUN pip install awscli
