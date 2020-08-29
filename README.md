# NexOwn
Our own P2P VPM nexo.


### Commands:

build: `docker build -t n2n .`

run: `docker run --cap-add=NET_ADMIN -it n2n /bin/bash`

clean up: `docker rm $(docker ps -a -q -f status=exited)`

start: `edge -d n2n0 -c el_nexo83 -a 192.168.100.3 -f -l supernode.ntop.org:7777`

forward traffic: `socat TCP4-LISTEN:9091,fork TCP4:192.168.100.1:9091 &`
