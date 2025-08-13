# Docker.Dnsmasq

Dnsmasq docker image.

Yhe `compose.yaml` sample:

```yaml
services:
  dnsmasq:
    image: ghcr.io/sontarru/dnsmasq:latest
    restart: unless-stopped
    container_name: dnsmasq
    # The `host` network mode is required for DHCP
    network_mode: host
    volumes:
    - ./dnsmasq:/etc/dnsmasq.d
    - /etc/hosts:/etc/hosts
```

The `dnsmasq.conf` sample:

```
interface=wlx7cc2c6082baa
bind-interfaces
listen-address=127.0.0.1
listen-address=10.42.0.1
no-resolv
no-poll
server=8.8.8.8
server=8.8.4.4
server=109.195.224.1
server=5.3.3.3
expand-hosts
domain=lan.sontar.ru
dhcp-range=10.42.0.100,10.42.0.200,12h
dhcp-option=option:router,10.42.0.1
```
