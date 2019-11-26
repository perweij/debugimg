FROM debian/buster-20191118-slim
LABEL description="Debian 10 image with some network tools"
USER root
RUN apt-get -y update && apt-get -y install bash ca-certificates net-tools iputils-ping iputils-tracepath iputils-arping traceroute netcat-openbsd openssh-client openssl nmap
# RUN useradd -ms /bin/bash default
USER default
CMD ["/bin/bash"]
