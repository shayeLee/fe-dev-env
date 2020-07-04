FROM ubuntu:18.04

RUN apt-get update && apt-get install wget -y \
&& apt-get install git -y \
&& wget -qO- https://deb.nodesource.com/setup_12.x | bash - && apt-get install nodejs -y \
&& npm i -g yarn \
&& yarn global add typescript rollup webpack webpack-cli