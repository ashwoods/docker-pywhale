FROM phusion/baseimage:0.9.11
MAINTAINER Ashley Camba Garrido <ashwoods@gmail.com>

ENV HOME /root
RUN mkdir /build
ADD . /build
RUN chmod -R o+x /build
RUN /build/install.sh
CMD ["/sbin/my_init"]
EXPOSE 80 443
