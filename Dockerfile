FROM ubuntu:latest

LABEL description="Network Mgmt Image (Ubuntu)"
LABEL tag="network-testing-img"

# Update and install tools
RUN apt-get update 
# Install MTR, TCPtraceroute, wget, dnsutils
RUN apt-get install mtr tcptraceroute wget inetutils-ping dnsutils -y
# Download tcpping and copy to path
RUN	wget http://www.vdberg.org/~richard/tcpping -O /usr/bin/tcping
# Define path permissions
RUN chmod 755 /usr/bin/tcping
