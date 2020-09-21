FROM ubuntu:20.04

RUN apt-get update && apt-get install openssh-server -y \
    && /etc/init.d/ssh start \
    && ps -e|grep ssh

FROM node:12.18.3

RUN yarn global add ts-node typescript rollup webpack webpack-cli @vue/cli