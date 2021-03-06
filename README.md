# lektor-docker

[![Build Status](https://travis-ci.org/SoftInstigate/lektor-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/lektor-docker)
[![Docker Stars](https://img.shields.io/docker/stars/softinstigate/lektor.svg?maxAge=2592000&logo=docker)](https://hub.docker.com/r/softinstigate/lektor/)
[![Docker Pulls](https://img.shields.io/docker/pulls/softinstigate/lektor.svg?maxAge=2592000&logo=docker)](https://hub.docker.com/r/softinstigate/lektor/)

Docker container for running [Lektor CMS](https://www.getlektor.com), plus some useful Javascript tools.

We mainly use this in continuous integration & delivery pipelines, deploying to AWS.

Docker builds: https://hub.docker.com/r/softinstigate/lektor/

 `docker pull softinstigate/lektor`

## Base image

`python:2.7`

## Installed packages

* Lektor 3.x
* Nodejs 8.x with npm
* yarn
* bower 1.x
* gulp 4.x
* grunt-cli 1.x
* Amazon AWS CLI

## Examples

First of all, please read the [Lektor quickstart](https://www.getlektor.com/docs/quickstart/) so that you know the basic lektor commands.

You must `cd` into an __alredy existing Lektor project__.

To build the site:

```bash
docker run --rm  -v $(pwd):/opt/lektor softinstigate/lektor build
```

To serve the site:

```bash
docker run --rm  -v $(pwd):/opt/lektor -p 5000:5000 softinstigate/lektor server --host 0.0.0.0
```
