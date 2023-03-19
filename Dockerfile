FROM ubuntu:22.10

RUN apt update

# install basic utilities
RUN apt install -y curl nmap git dnsutils net-tools vim

# install python / pip
RUN apt install -y python3 python3-pip

# configure fish shell environment
RUN apt install -y fish neofetch
RUN pip3 install powerline-shell

ADD resources/powerline.fish /root/.config/fish/conf.d/powerline.fish
RUN echo "neofetch" >> ~/.config/fish/config.fish

ENTRYPOINT [ "/usr/bin/fish" ]