ARPing inside a container
=========================

This container was mainly built as a replacement for farpd on
cloud physical servers, when the provider requires the host to
answer ARP requests for additional IP addresses and does learn
from ARP requests.

It relies on ``arping`` which is a stable and well maintained
command line utility, as opposed to ``farpd`` which is almost
unmaintained and lacks some stability.

It supports sending ARP requests from multiple source IP addresses.

Running the container
---------------------

The container accepts the following parameters:

```
<docker run> <target IP> <source IP> [<source IP> [...]]
```

For instance:

```
docker run --net=host -i docker-arping 192.168.1.1 192.168.1.101 192.168.1.102
```
