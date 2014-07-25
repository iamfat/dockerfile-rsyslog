FROM ubuntu:14.04
MAINTAINER jia.huang@geneegroup.com

# Install Basic Packages
RUN apt-get update && apt-get install -y rsyslog supervisor && \
    sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf && \
    sed -i 's/^logfile=.*$/logfile=\/dev\/null/' /etc/supervisor/supervisord.conf

ADD supervisor.rsyslog.conf /etc/supervisor/conf.d/rsyslog.conf

# override /etc/rsyslog.d to change settings

ENTRYPOINT ["/usr/bin/supervisord"]
CMD ["-c", "/etc/supervisor/supervisord.conf"]