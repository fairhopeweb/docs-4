---
description: >-
  Configure SSO using OpenID Connect and OneLogin
---

# Auth0

## OpenID Connect

To become familiar with OpenID Connect in Budibase, see:

{% page-ref page="../oidc.md" %}

## Configuration

### Create the application

Create the budibase application in your Applications list.

![](../../../.gitbook/assets/authentication/oidc-examples/onelogin/create.png)

Type 'openid connect' and select 'Openid Connect (OIDC)'

![](../../../.gitbook/assets/authentication/oidc-examples/onelogin/openid.png)

Give your application a name and save

![](../../../.gitbook/assets/authentication/oidc-examples/onelogin/add-name.png)

Visit the 'SSO' tab and choose
- 'Application Type' = 'Web'
- 'Authentication Method' = 'POST'

![](../../../.gitbook/assets/authentication/oidc-examples/onelogin/type.png)


### Find your configuration details
Visit the 'SSO' tab in your application.

![](../../../.gitbook/assets/authentication/oidc-examples/onelogin/details.png)

**Client ID**

Use the **Client ID** field as your Client ID in Budibase.

**Client Secret**

Use the **Client Secret** field as your Client ID in Budibase.

**Configuration URL** 

Use the **Issuer URL** field to construct your Configuration URL in Budibase.
e.g. `https://{Issuer URL}/.well-known/openid-configuration`

### Add your callback URL

Visit the 'Configuration' tab in your application and enter your callback URL

![](../../../.gitbook/assets/authentication/oidc-examples/onelogin/callback.png)