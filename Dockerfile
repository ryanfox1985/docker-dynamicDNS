FROM ubuntu:14.04
MAINTAINER ryanfox1985 <wolf.fox1985@gmail.com>

# Update and upgrade
RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y ddclient
RUN mkdir -p /etc/ddclient
VOLUME ["/etc/ddclient"]
CMD ["ddclient", "-daemon=0", "-noquiet", "-file=/etc/ddclient/ddclient.conf"]
