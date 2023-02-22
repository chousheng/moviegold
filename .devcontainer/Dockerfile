FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Install OpenJDK 17 and Maven
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk-headless && \
    apt-get install -y maven && \
    apt-get clean && \
    echo 'export JAVA_HOME='$(echo /usr/lib/jvm/java-17-openjdk*) >> /etc/profile.d/jdk.sh && \
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile.d/jdk.sh && \
    chmod +x /etc/profile.d/jdk.sh;

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

# Install mongodb-mongosh and mongodb-org-tools
RUN wget -qO- https://www.mongodb.org/static/pgp/server-6.0.asc | tee /etc/apt/trusted.gpg.d/mongodb.asc && \
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && \
    apt-get update && \
    apt-get install -y mongodb-mongosh && \
    apt-get install -y mongodb-org-tools;
