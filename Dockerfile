FROM ubuntu:focal

# Install base packages and update all packages
RUN apt-get update && \
    apt-get install dnsutils iputils-ping traceroute curl wget -y && \
    DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

# Install dumb-init
RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64.deb
RUN dpkg -i dumb-init_*.deb



# dumb-init entrypoint
ENTRYPOINT ["/usr/bin/dumb-init", "--"]