WITHOUT DOCKER
==============

$ ping -c1 localhost
PING localhost (127.0.0.1): 56 data bytes
64 bytes from 127.0.0.1: seq=0 ttl=64 time=0.059 ms

--- localhost ping statistics ---
1 packets transmitted, 1 packets received, 0% packet loss
round-trip min/avg/max = 0.059/0.059/0.059 ms
$ echo $?
0

$ ping -c1 localhost2
ping: bad address 'localhost2'
$ echo $?
1


WITH DOCKER
===========

$ docker run busybox ping -c1 localhost2
ping: bad address 'localhost2'
$ echo $?
1
$ docker run busybox ping -c1 localhost
PING localhost (127.0.0.1): 56 data bytes
64 bytes from 127.0.0.1: seq=0 ttl=64 time=0.059 ms

--- localhost ping statistics ---
1 packets transmitted, 1 packets received, 0% packet loss
round-trip min/avg/max = 0.059/0.059/0.059 ms
$ echo $?
0
