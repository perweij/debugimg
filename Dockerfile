FROM debian/buster-20191118-slim
LABEL description="Debian 10 image with some network tools"
USER root
RUN apt-get -y update && apt-get bash ca-certificates net-tools iputils-ping iputils-tracepath iputils-arping traceroute netcat-openbsd openssh-client openssl nmap
USER default
CMD ["/bin/bash"]
