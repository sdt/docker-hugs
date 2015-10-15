FROM debian:jessie
MAINTAINER Stephen Thirlwall <sdt@dr.com>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        hugs \
 && true

WORKDIR /hugs
CMD hugs
