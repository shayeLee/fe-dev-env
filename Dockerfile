FROM ubuntu:20.04

RUN apt-get update && apt-get install vim -y

FROM node:12.18.3

RUN yarn global add ts-node typescript rollup webpack webpack-cli @vue/cli