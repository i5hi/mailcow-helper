# INITIALIZE OS

Refer to init.sh

# rDNS

Setting rDNS at your cloud provider. rDNS is just the reverse of DNS.

Where DNS is DomainName->IP
rDNS is IP->DomainName

There should already be an rDNS setting at your cloud provider for the IP of your server that points to their own service.

Just change this to point to your domain name.

# CONFIG

Inspect and modify (if required) the config file at `/opt/mailcow-dockerized/mailcow.conf`

# START

```
docker compose pull

docker compose up -d
```

Once this is complete you can now access your mailcow admin panel at the provided hostname.

# DNS

You can now add Domains and you will be provided a list of DNS entries required to enable mail for that domain.

# BACKUP

Ensure that `THREADS` value is number of cores - 2, to allow mailcow to continue operating normally while a backup is being taken.

```
export THREADS=$(expr $(nproc) - 2)
MAILCOW_BACKUP_LOCATION=/opt/backup /opt/mailcow-dockerized/helper-scripts/backup_and_restore.sh backup all
```

# RESTORE

```
./opt/mailcow-dockerized/helper-scripts/backup_and_restore.sh restore
```

# HELP

https://docs.mailcow.email/
