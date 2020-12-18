# docker-smb
Debian-based Samba server in Docker.

## Running

Mount your config directory to /etc/samba:
```
docker run -v /path/to/samba/config/dir:/etc/samba ghcr.io/ssmall/samba-server:latest
```

Or specify a config file in a different location:
```
docker run -v /path/to/samba/config:/some/other/dir ghcr.io/ssmall/samba-server:latest --configfile=/some/other/dir/smb.conf
```