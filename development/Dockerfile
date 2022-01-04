FROM golang:1.17.5-alpine

# Install ZSH with the robbyrussell theme. Plugins are denoted by -p
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
    -t robbyrussell \
    -p git-auto-fetch \
    -p git-escape-magic \
    -p git \
    -p golang

# Customize ZSH prompt
RUN echo 'PROMPT="%U%{$fg[yellow]%}seraph-dev%u ${PROMPT}"' >> ~/.zshrc

WORKDIR "/go/src/github.com/milanmayr/seraph"