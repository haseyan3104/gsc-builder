# gsc-builder
unofficial container image to build gramine shielded container 

## build docker image
```
$ docker build -t gsc-build .
```

## run docker image
using docker-outside-of-docker
```
$ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock gsc-build /bin/bash
```

# how to use gsc?
Please see [official document](https://gramine.readthedocs.io/projects/gsc/en/latest/).