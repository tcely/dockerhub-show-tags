# dockerhub-show-tags
A much smaller image than harisekhon/pytools

### Examples

Check which versions of bash are available.
```sh
docker run --rm tcely/dockerhub-show-tags bash
```

Get the latest stable version for my `docker-compose.version` file.
```sh
docker run --rm tcely/dockerhub-show-tags -q docker/compose | sort -rV | grep -ve -rc | head -n 1
```
