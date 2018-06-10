FROM resin/rpi-raspbian:jessie

# Set correct environment variables
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update && apt-get -y install wget

COPY root/ /
RUN chmod +x /usr/bin/dnscrypt

CMD ["/usr/bin/dnscrypt"]
