FROM debian:7.6
MAINTAINER jia.huang@geneegroup.com

ENV DEBIAN_FRONTEND noninteractive

# Install Basic Packages
RUN apt-get update && apt-get install -y rsyslog

# override /etc/rsyslog.d to change settings

CMD ["/usr/sbin/rsyslogd", "-n"]