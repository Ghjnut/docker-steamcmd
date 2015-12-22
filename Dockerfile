FROM ubuntu:15.10

MAINTAINER Jake Pelletier <ghjnut@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update &&\
	apt-get install -y curl lib32gcc1 &&\
	apt-get clean &&\
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Download and extract SteamCMD
RUN mkdir -p /opt/steamcmd &&\
	cd /opt/steamcmd &&\
	curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -vxz

WORKDIR /opt/steamcmd

CMD ["./steamcmd.sh"]
