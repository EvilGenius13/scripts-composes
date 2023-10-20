# EG Scripts and Composes
This repository contains scripts and docker-compose files that I use to manage my home server and cloud instances. I will slowly be adding more scripts and compose files as I create them.

## Docker Compose List
- nginx-proxy-manager.yml
(Installs Nginx Proxy Manager)
This compose file runs a containerized version of Nginx Proxy Manager. It is a web interface that allows you to manage your reverse proxy and SSL certificates. It is a great tool for managing your web services.
- uptime-kuma.yml
(Installs Uptime Kuma)
This compose file runs a containerized version of Uptime Kuma. It is a web interface that allows you to monitor your web services. You can do HTTP checks, port checks, and check uptime for containers.

## Dockerfile List
- bun-js-dockerfile
(Creates a containerized version of a bun project)
This dockerfile creates a containerized version of a bun project (bun.js)
- node-js-dockerfile
(Creates a containerized version of a node project)
This dockerfile creates a containerized version of a node project (node.js)
- python-dockerfile
(Creates a containerized version of a python project)
This dockerfile creates a containerized version of a python project (python)

## Scripts List
- docker.sh
(Installs Docker and Docker-Compose)
To use, run the following command in your terminal:
```bash
curl -fsSL https://raw.githubusercontent.com/EvilGenius13/scripts-composes/main/scripts/docker.sh | bash
```

- docker-portainer.sh
(Installs Docker, Docker-Compose, and Portainer)
To use, run the following command in your terminal:
```bash
curl -fsSL https://raw.githubusercontent.com/EvilGenius13/scripts-composes/main/scripts/docker-portainer.sh | bash
```
If you hit a part in the script asking to restart kernels, just hit enter and it will continue.
When the script is complete, double check that portainer is running. If it is, the installation is complete.
I recommend running `sudo reboot` to restart the system and finish the kernel updates.