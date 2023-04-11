FROM alpine:latest

RUN apk update


# Install fish shell and set as default
RUN apk add fish neofetch
RUN sed -i 's/\/bin\/ash/\/usr\/bin\/fish/' /etc/passwd

# Install powerline shell (requires python3 and procps)
RUN apk add py3-pip procps
RUN pip3 install powerline-shell
ADD resources/powerline.fish /root/.config/fish/conf.d/powerline.fish
RUN echo "neofetch" >> ~/.config/fish/config.fish

# Install git and ssh (ssh necessary for git)
RUN apk add git openssh-client

# Install network diagnostic tools
RUN apk add curl


ENTRYPOINT [ "/usr/bin/fish" ]