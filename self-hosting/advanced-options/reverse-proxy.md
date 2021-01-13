---
description: How to configure a reverse proxy for your Budibase platform
---

# Reverse proxy

One of the main things you will want to setup before putting your Budibase platform into production use is a proxy, which can control access to the cluster via a domain \(removing the need for a port number and so on\) as well as allowing the use of HTTPS for a domain that you own. In this section we will provide some configuration options to get this up and running easily with [NGINX](https://www.nginx.com/).

{% hint style="info" %}
Please note, this section assumes some knowledge of NGINX installation, setup and configuration. Information about NGINX can be found here:  [installing](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/), [setup](https://docs.nginx.com/nginx/admin-guide/basic-functionality/runtime-control/) and [configuration](https://docs.nginx.com/nginx/admin-guide/basic-functionality/managing-configuration-files/). 
{% endhint %}

Our recommendation for running Budibase is a "many app one server" approach, where many different apps can be deployed to the same self hosted Budibase platform. In general this means you'll have two main options for hosting the Budibase platform:

1.  A basic method where the app cluster is simply accessed directly.
2. An advanced method where paths on your domain are directed to apps individually.

#### Basic

A very basic reverse proxy configuration will simply pass all requests from a domain/sub-domain/path to your Budibase platform. Below we have provided a configuration which can do this.

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

#### Advanced

We can take this further and prettify the URLs which lead to deployed apps, rather than needing to always have the link produced by the builder. We will need to carry out the following to proxy requests correctly:

1. Connections from the builder to deploy apps, for this we will use the path `/deployment`, when deploying from the builder your users will need to put in a hosting URL like `yourdomain.com/deployment`
2. Connections to view an app, these may be on a path of the main URL, for example `yourdomain.com/crm`
3. Internal connections from the deployed apps to the app servers and object stores, at `/api` and `/app-assets` respectively.

Below we have provided an NGINX configuration that will carry out the above, we have designed this so that it can be integrated into an existing nginx server; simply drop it into a server block in your config. This is purely an example and we hope it will help you work out how to extend your existing NGINX configuration to suit your needs.

```text
# Budibase
set $budibase_host      <BUDIBASE_ADDRESS>;
set $budibase_app_id    <APP_ID>;
set $budibase_port      10000;

# Ensure trailing slash is present
location /crm {
    return 302 /crm/;
}

# Serve main HTML from root path
location /crm/ {
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header Host $http_host;
    proxy_http_version 1.1;
    proxy_pass http://$budibase_host:$budibase_port/app/$budibase_app_id/;
}

# Serve app assets and API calls
location ~* ^/(app-assets|api|deployment) {
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header Host $http_host;
    proxy_http_version 1.1;
    proxy_pass http://$budibase_host:$budibase_port;
}
```

In this configuration if we swap the `<BUDIBASE_ADDRESS>` and `<APP_ID>` for an app which has been deployed to the cluster you will be able to have an NGINX proxy, running on another host, which will forward requests to the Budibase platform and provide a prettified URL to the app under `/crm` . If you wish to run this on the same host as the platform is running on then the Budibase address will simply be localhost and your app ID can be found in the URL when viewing at a deployed app \(begins with `app_`\).

