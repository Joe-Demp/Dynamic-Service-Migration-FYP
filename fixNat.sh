#!/bin/bash

# These REDIRECT rules were necessary for running the application on a home network (behind a router).
# The file: "mec-framework/Core/src/main/java/service/core/Constants.java" should give more context.
#   While all applications listened to the same port numbers on their respective machines,
#   it was necessary to use different ports for the different machines on the subnetwork,
#   since the router hides their proper IP addresses.

sudo iptables -t nat -A PREROUTING -i ens4 -p tcp --dport 8093 -j REDIRECT --to-ports 8090
sudo iptables -t nat -A PREROUTING -i ens4 -p tcp --dport 8094 -j REDIRECT --to-ports 8091
sudo iptables -t nat -A PREROUTING -i ens4 -p tcp --dport 8095 -j REDIRECT --to-ports 8092
