# docker-dnscrypt-pihole

A Docker-based [DNSCrypt](https://dnscrypt.info/) proxy integrated with [Pi-hole](https://pi-hole.net/).

It comprises of two containers:
* https://github.com/jedisct1/dnscrypt-proxy
* https://github.com/pi-hole/docker-pi-hole

The `master` branch supports x86_64 architectures using `library/debian:jessie` while the `linux_arm`
branch supports ARM, specifically for RaspberryPi using `resin/rpi-raspbian:jessie`.

## Installation

**Prerequistes**

 * Docker
 * Docker Compose

**Install**
```shell
$ git clone git@github.com:benke/docker-dnscrypt-pihole.git
```

## Configuration

### dnscrypt-proxy
The default DNSCrypt provider is pinned to [Cloudflare's 1.1.1.1](https://1.1.1.1/). You can instead
choose to let the dnscrypt-proxy select from a list of providers that settles on the one with the
lowest latency on startup.  To do that, comment the following line in [dnscrypt-proxy.toml](./volumes/dnscrypt-proxy/conf/dnscrypt-proxy.toml)

```shell
# server_names = ['cloudflare']
```

There are plenty of other options which might be of interest to you which can be found
along with descriptions in [dnscrypt-proxy.toml](./volumes/dnscrypt-proxy/conf/dnscrypt-proxy.toml)
as well.

### pi-hole
The default credentials for Pi-hole's web user interface are `admin`/`pihole`.
To set a different password set the `WEBPASSWORD` environment variable
before running the startup script.

## Running

```shell
$ cd docker-dnscrypt-pihole

# start
$ WEBPASSWORD=<yourpassword> ./start.sh

# stop
$ ./stop.sh
```

### Router/System DNS Configuration
Point your router or system DNS configuration to the IP address of the device
running these containers.  Duplicate the address if two are required.


## Acknowledgments

The [dnscrypt-proxy](./dnscrypt-proxy/Dockerfile) container implementation borrows heavily from
[rix1337/docker-dnscrypt](https://github.com/rix1337/docker-dnscrypt) with support for
both x86_64 and ARM chipsets.

## License

Free, as in beer.  Hack away!