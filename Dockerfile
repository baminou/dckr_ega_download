FROM ubuntu:16.04

MAINTAINER Name <brice.aminou@gmail.com>

RUN apt-get update && apt-get install -y git && apt-get install -y wget
