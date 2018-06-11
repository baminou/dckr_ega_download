FROM ubuntu:16.04

MAINTAINER Name <brice.aminou@gmail.com>

RUN apt-get update && apt-get install -y git && apt-get install -y wget
RUN apt-get -y install python

RUN mkdir /scripts

RUN wget https://download.asperasoft.com/download/sw/ascp-client/3.5.4/ascp-install-3.5.4.102989-linux-64.sh -O /scripts/aspera.sh
RUN chmod +x /scripts/aspera.sh
RUN bash /scripts/aspera.sh

RUN wget https://raw.githubusercontent.com/baminou/dckr_ega_download/master/tools/download_ega_file.py -O /scripts/download
RUN chmod +x /scripts/download

ENV PATH="/scripts/:${PATH}"
