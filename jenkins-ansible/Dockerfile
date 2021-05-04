FROM jenkins/jenkins

USER root

RUN  apt update && \
     apt install python3-pip -y 

RUN  pip3 install ansible --upgrade

USER jenkins