FROM debian:8

MAINTAINER Johan Axfors <johan@axfors.se>

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir /var/lib/apt/lists/partial

RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
RUN 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

RUN apt-get update && \ 
    apt-get -y install \
		zip \
		openjdk-7-jre \
		jenkins && \
	apt-get autoremove && \
	apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archive/*.deb
