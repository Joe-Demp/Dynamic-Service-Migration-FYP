#!/bin/bash

sudo iptables -t nat -A PREROUTING -i ens4 -p tcp --dport 8093 -j REDIRECT --to-ports 8090
sudo iptables -t nat -A PREROUTING -i ens4 -p tcp --dport 8094 -j REDIRECT --to-ports 8091
sudo iptables -t nat -A PREROUTING -i ens4 -p tcp --dport 8095 -j REDIRECT --to-ports 8092
