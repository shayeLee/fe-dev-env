FROM ubuntu:18.04

EXPOSE 7080

RUN apt-get update && apt-get install wget -y \
&& wget -qO- https://deb.nodesource.com/setup_12.x | bash - \
&&  apt-get install nodejs -y \
&& apt-get install git -y \
&& apt-get install zsh \
&& git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
&& cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
&& chsh -s /bin/zsh \
&& npm i -g yarn \
&& yarn global add typescript rollup webpack webpack-cli