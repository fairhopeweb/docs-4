---
description: Configure SSO using OpenID Connect and Auth0
---

# SSO with Auth0

## OpenID Connect

To become familiar with OpenID Connect in Budibase, see:

{% page-ref page="oidc.md" %}

## Configuration

### Create the application

Create the budibase application in your Applications list.

![](../../.gitbook/assets/create-application.png)

Select 'Regular Web Applications'.

![](../../.gitbook/assets/regular-web.png)

### Find your configuration details

Visit the 'Settings' tab in your application.

![](../../.gitbook/assets/copy-details.png)

**Configuration URL**

Use the **Domain** field to construct your Configuration URL in Budibase. e.g. `https://{domain}/.well-known/openid-configuration`

**Client ID**

Use the **Client ID** field as your Client ID in Budibase.

**Client Secret**

Use the **Client Secret** field as your Client ID in Budibase.

### Add your callback URL

Scroll down to the 'Application URIs' section and enter your callback URL

![](../../.gitbook/assets/callback%20%283%29.png)

