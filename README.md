# lektor-docker

Docker container for running [Lektor CMS](https://www.getlektor.com), plus some useful Javascript tools.

We mainly use this in continuous integration & delivery pipelines, deploying to AWS.

[![Build Status](https://travis-ci.org/SoftInstigate/lektor-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/lektor-docker)

Docker builds: https://hub.docker.com/r/softinstigate/lektor/

## Base image

Python:2.7

## Istalled packages

* Lektor 3.x
* Nodejs 6.x with npm
* yarn
* typings 2.x
* bower 1.x
* gulp 4.x
* grunt-cli 1.x
* Amazon AWS CLI
