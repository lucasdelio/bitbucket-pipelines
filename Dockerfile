FROM atlassian/default-image:1

MAINTAINER mauro.dellachiesa.work@gmail.com

ENV DOCKER_COMPOSE_VERSION 1.18.0
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m) > docker-compose
RUN chmod +x docker-compose
RUN mv docker-compose /usr/local/bin