FROM debian:bullseye as production

LABEL version="1.0" \
    description="Debian11" \
    by="doge.py" \
    maintainer="doge.py@gmail.com"

WORKDIR /root/docker/

COPY pkgs-install.sh /root/docker/

RUN bash -ex /root/docker/pkgs-install.sh

