# Ubuntu Base Image

This is an example of an Ubuntu base image with some extras.

## dumb-init

This container sets [Yelp's dumb-init](https://github.com/Yelp/dumb-init) as the ENTRYPOINT in order to add some additional safety around processes that may not handle signals correctly.

## Extra Packages

The following packages have been added to assist with general troubleshooting.

* wget
* curl
* ping
* dig/nslookup
* traceroute

Additionally, the packages from buildpack-deps are also added in order to facilitate easier building of dependent images.

## Build Info

### Schedule

This container is built every day at Midnight UTC. A new version is pushed only if something changed (Thanks again to [Yelp](https://github.com/Yelp/docker-push-latest-if-changed))
