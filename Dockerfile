FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
RUN apt-get update -y
RUN apt-get install curl sudo apt-utils -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install nodejs -y
RUN npm i -g localtunnel
RUN curl -fsSL https://code-server.dev/install.sh | sh
CMD ["/bin/bash", "-c", "code-server --auth=none --port=10000 & lt --port=10000"]
