FROM ubuntu:22.04

RUN apt install  software-properties-common gnupg2 curl -y
RUN curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
RUN install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
RUN apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" -y
RUN apt install terraform -y