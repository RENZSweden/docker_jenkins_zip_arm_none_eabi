FROM jenkins/jenkins:latest

MAINTAINER Johan Axfors <johan@axfors.se>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \ 
    apt-get -y install \
		zip \
		gradle \
	apt-get autoremove && \
	apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archive/*.deb
