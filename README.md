Docker Hub: iamfat/rsyslog
===========
## RSyslog Environment
```bash
docker build -t iamfat/rsyslog rsyslog

#simple way
export BASE_DIR=/mnt/sda1/data
docker run --name rsyslog -v /dev:/dev --privileged -d \
    -v $BASE_DIR/etc/rsyslog.d:/etc/rsyslog.d \
    iamfat/rsyslog
```
