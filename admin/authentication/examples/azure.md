---
description: >-
  Configure SSO using OpenID Connect and Azure AD
---

# Azure AD

## OpenID Connect

To become familiar with OpenID Connect in Budibase, see:

{% page-ref page="../oidc.md" %}

## Configuration

### Create the application

Create the budibase application using a new 'App Registration'

![](../../../.gitbook/assets/authentication/oidc-examples/azure/add-application.png)

Add the application name

![](../../../.gitbook/assets/authentication/oidc-examples/azure/add-application-2.png)

Ignore the Redirect URI for now.

### Find your configuration details

**Configuration URL** 

Visit 'Overview' > 'Endpoints'.

![](../../../.gitbook/assets/authentication/oidc-examples/azure/configurationurl0.png)

Use the **OpenID Connect metadata document** field as your Configuration URL in Budibase.

![](../../../.gitbook/assets/authentication/oidc-examples/azure/configurationurl.png)

**Client ID**

Visit 'Overview'

![](../../../.gitbook/assets/authentication/oidc-examples/azure/clientid.png)

Use the **Application (client) ID** field as your Client ID in Budibase.

**Client Secret**

Visit 'Certificates & secrets', click on 'Add client secret', give your secret a description / expiry and save.

![](../../../.gitbook/assets/authentication/oidc-examples/azure/clientsecret.png)

View your newly created secret

![](../../../.gitbook/assets/authentication/oidc-examples/azure/clientsecret2.png)

Use the **Value** field as your Client ID in Budibase.


### Add your callback URL

Visit 'Authentication' and enter your callback URL

![](../../../.gitbook/assets/authentication/oidc-examples/azure/callback.png)