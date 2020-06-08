FROM atlassian/default-image:2

MAINTAINER lucasdelio@gmail.com

RUN apt-get update && \
apt-get install -y python-pip zip && \
apt-get autoclean
RUN npm i -g npm
RUN pip install awscli
