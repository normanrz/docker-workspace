FROM ubuntu:artful

RUN apt-get update && \
  apt-get install -y \
    zsh \
    git \
    curl \
    wget \
    build-essential && \
  rm -rf /var/lib/apt/lists/* && \
  git clone https://github.com/robbyrussell/oh-my-zsh.git /etc/oh-my-zsh

COPY zshrc /root/.zshrc
SHELL ["/bin/zsh", "-c"]
WORKDIR "/root"
CMD ["/bin/zsh"]

