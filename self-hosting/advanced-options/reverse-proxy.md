---
description: How to configure a reverse proxy for your Budibase platform
---

# Reverse proxy

One of the main things you will want to setup before putting your Budibase platform into production use is a proxy, which can control access to the cluster via a domain \(removing the need for a port number and so on\) as well as allowing the use of HTTPS for a domain that you own. In this section we will provide some configuration options to get this up and running easily with [NGINX](https://www.nginx.com/).

{% hint style="info" %}
Please note, this section assumes some knowledge of NGINX installation, setup and configuration. Information about NGINX can be found here:  [installing](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/), [setup](https://docs.nginx.com/nginx/admin-guide/basic-functionality/runtime-control/) and [configuration](https://docs.nginx.com/nginx/admin-guide/basic-functionality/managing-configuration-files/). 
{% endhint %}

Our recommendation for running Budibase is a "many app one server" approach, where many different apps can be deployed to the same self hosted Budibase platform.  Below we have detailed a basic method for getting Budibase up and running behind a reverse proxy, which you can then update to add into an existing configuration or add SSL information.

Here is a basic reverse proxy configuration which will simply pass all requests from a domain/sub-domain/path to your Budibase platform.

```text
# Budibase
set $budibase_host      <BUDIBASE_ADDRESS>;
set $budibase_port      10000;

server {
    listen 80;
    server_name yourdomain.com;
    
    location / {
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header Host $http_host;
        proxy_http_version 1.1;
        proxy_pass http://$budibase_host:$budibase_port;
    }
    
    client_max_body_size 50m;
}
```

In this configuration all that needs to be updated for this to work is where the Budibase platform has been hosted, if it is hosted on the same machine then simply replace `<BUDIBASE_ADDRESS>` with `localhost`.

There are a few ways this can be extended/altered:

1. This is just a basic version which will proxy on any requests to your domain/sub-domain to the Budibase platform, you can change the `server_name` to suit your needs.
2. Where `location /` has been set you can change the slash to a path name if you desire to have your Budibase app server running on a specific path rather than the whole domain or a sub-domain.
3. Lastly if you want to make use of HTTPS/TLS you can either configure this basic configuration to re-direct traffic to HTTPS and then add your certificate, or you can use [certbot-auto](https://certbot.eff.org/lets-encrypt/ubuntuxenial-nginx.html) to automatically generate and look after the certificates for your domain!

