ARG NODE_VERSION=8.9.2
ARG GULP_VERSION=3.9.1
ARG BOWER_VERSION=1.8.2

FROM node:${NODE_VERSION}

LABEL maintainer="Ugur Ozkan"

#Update packages
RUN apt-get update

#Install dpl
RUN apt-get install -y ruby
RUN gem install dpl

#Install awscli
RUN apt-get install -y python-pip
RUN pip install awscli

#Install bower
ARG BOWER_VERSION
RUN npm install -g bower@${BOWER_VERSION}

#Install gulp
ARG GULP_VERSION
RUN npm install -g gulp@${GULP_VERSION}
