# dockerhub-show-tags
A much smaller image than harisekhon/pytools

### Examples

Check which versions of bash are available.
```sh
$ docker run --rm tcely/dockerhub-show-tags bash

DockerHub

repo: bash
tags: latest
      3
      3.0
      3.0.22
      3.1
      3.1.23
      3.2
      3.2.57
      4
      4.0
      4.0.44
      4.1
      4.1.17
      4.2
      4.2.53
      4.3
      4.3.48
      4.4
      4.4.0
      4.4.11
      4.4.12
      4.4.5
      4.4.7

```

Get the latest stable version for my `docker-compose.version` file.
```sh
$ docker run --rm tcely/dockerhub-show-tags -q docker/compose | sort -rV | grep -ve -rc | head -n 1
```
