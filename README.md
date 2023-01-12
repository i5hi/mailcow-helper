# INITIALIZE OS

Refer to init.sh

# rDNS

Setting rDNS at your cloud provider. rDNS is just the reverse of DNS.

Where DNS is DomainName->IP
rDNS is IP->DomainName

There should already be an rDNS setting at your cloud provider for the IP of your server that points to their own service.

Just change this to point to your domain name.

# Config

Inspect and modify (if required) the config file at `/opt/mailcow-dockerized/mailcow.conf`

# START

```
docker compose pull

docker compose up -d
```

Once this is complete you can now access your mailcow admin panel at the provided hostname.

# DNS

You can now add Domains and you will be provided a list of DNS entries required to enable mail for that domain.
