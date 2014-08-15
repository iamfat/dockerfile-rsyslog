FROM ubuntu:14.04
MAINTAINER jia.huang@geneegroup.com

# Install Basic Packages
RUN apt-get update && apt-get install -y rsyslog

# override /etc/rsyslog.d to change settings

CMD ["/usr/sbin/rsyslogd", "-n"]