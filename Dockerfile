FROM nibo/java:8u171-jdk
MAINTAINER Richard <nibocn@gmail.com>

# Install Fonts
COPY ./fonts /usr/share/fonts

RUN yum -y install fontconfig ttmkfdir \
    && chmod -R 755 /usr/share/fonts \
    && yum clean all \
    && rm -rf /tmp/*
