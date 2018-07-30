FROM atlassian/default-image:1

MAINTAINER mauro.dellachiesa.work@gmail.com

ENV DOCKER_COMPOSE_VERSION 1.18.0
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m) > docker-compose
RUN chmod +x docker-compose
RUN mv docker-compose /usr/local/bin

RUN apt-get update && \
apt-get install -y python-pip zip && \
apt-get autoclean
RUN apt-get remove -y maven*
RUN wget http://apache.dattatec.com/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz
RUN tar -zxf apache-maven-3.5.3-bin.tar.gz
RUN cp -R apache-maven-3.5.3 /usr/local
RUN ln -s /usr/local/apache-maven-3.5.3/bin/mvn /usr/bin/mvn
RUN pip install awscli
RUN rm apache-maven-3.5.3-bin.tar.gz