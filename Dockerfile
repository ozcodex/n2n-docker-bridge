FROM debian:stable-slim

COPY . /n2n

RUN apt-get update && \
    apt-get install -y gnupg lsb-release libpcap-dev && \
    apt-get install /n2n/apt-ntop.deb

RUN apt-get update && \
    apt-get install -y n2n iputils-ping socat iproute2

RUN chmod +x /n2n/init.sh

CMD ["/bin/bash"]
