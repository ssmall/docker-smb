FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      samba=2:4.9.5+dfsg-5+deb10u1 && \
    rm -rf /var/lib/apt/lists/*

VOLUME [ "/etc/samba" ]

EXPOSE 445/tcp

ENTRYPOINT ["smbd", "--interactive", "--foreground", "--log-stdout"]