FROM ubuntu:14.04
MAINTAINER ryanfox1985 <wolf.fox1985@gmail.com>

# Update and upgrade
RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y inadyn
RUN mkdir -p /etc/inadyn
VOLUME ["/etc/inadyn"]
CMD ["/usr/bin/inadyn", "-F", "/etc/inadyn/inadyn.conf"]
