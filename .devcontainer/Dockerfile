FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Install OpenJDK 17
#RUN apt-get update && \
#    apt-get install -y openjdk-17-jdk-headless && \
#    apt-get install -y maven && \
#    apt-get clean;

# Install Node.js 18
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash && \
    apt-get install -y nodejs && \
    npm install -g npm \
    apt-get clean;

# Install vim
RUN apt-get update && \ 
    apt-get install -y vim && \
    apt-get clean;

# Install ping, dnsutils, and telent
RUN apt-get update && \ 
    apt-get install -y iputils-ping dnsutils telnet && \
    apt-get clean;
