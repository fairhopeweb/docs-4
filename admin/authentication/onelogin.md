---
description: Configure SSO using OpenID Connect and OneLogin
---

# SSO with OneLogin

## OpenID Connect

To become familiar with OpenID Connect in Budibase, see:

{% page-ref page="oidc.md" %}

## Configuration

### Create the application

Create the budibase application in your Applications list.

![](../../.gitbook/assets/create.png)

Type 'openid connect' and select 'Openid Connect \(OIDC\)'

![](../../.gitbook/assets/openid.png)

Give your application a name and save

![](../../.gitbook/assets/add-name.png)

Visit the 'SSO' tab and choose

* 'Application Type' = 'Web'
* 'Authentication Method' = 'POST'

![](../../.gitbook/assets/type.png)

### Find your configuration details

Visit the 'SSO' tab in your application.

![](../../.gitbook/assets/details.png)

**Client ID**

Use the **Client ID** field as your Client ID in Budibase.

**Client Secret**

Use the **Client Secret** field as your Client ID in Budibase.

**Configuration URL**

Use the **Issuer URL** field to construct your Configuration URL in Budibase. e.g. `https://{Issuer URL}/.well-known/openid-configuration`

### Add your callback URL

Visit the 'Configuration' tab in your application and enter your callback URL

![](../../.gitbook/assets/callback%20%282%29.png)

