FROM ubuntu:latest
MAINTAINER Gaetan Jonathan
RUN apt-get update -y \
&& apt-get install -y vim git ansible python3 openssh-server \
&& apt-get install net-tools inetutils-ping  -y \
&& apt-get install apt-transport-https ca-certificates curl software-properties-common -y \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"  \
&& apt-get update && apt-get install docker-ce -y \
&& apt-get autoremove && apt-get clean 
ADD ./sshd_config /etc/ssh/
RUN echo 'root:toor' | chpasswd
CMD /etc/init.d/ssh start && /etc/init.d/docker start ; bash 
