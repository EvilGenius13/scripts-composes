#!/bin/bash

# Define the Docker Swarm and management ports
SWARM_PORTS="2376 2377 7946 4789"
MANAGEMENT_PORTS="9000 8000"

# Allow traffic on the Docker Swarm ports
for port in $SWARM_PORTS; do
    iptables -A INPUT -p tcp --dport $port -j ACCEPT
    iptables -A OUTPUT -p tcp --dport $port -j ACCEPT
done

# Allow traffic on the UDP Swarm ports
iptables -A INPUT -p udp --dport 7946 -j ACCEPT
iptables -A OUTPUT -p udp --dport 7946 -j ACCEPT
iptables -A INPUT -p udp --dport 4789 -j ACCEPT
iptables -A OUTPUT -p udp --dport 4789 -j ACCEPT

# Allow traffic on the management ports for Portainer
for port in $MANAGEMENT_PORTS; do
    iptables -A INPUT -p tcp --dport $port -j ACCEPT
    iptables -A OUTPUT -p tcp --dport $port -j ACCEPT
done
