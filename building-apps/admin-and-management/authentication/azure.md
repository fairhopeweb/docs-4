---
description: Configure SSO using OpenID Connect and Azure AD
---

# SSO with Azure AD

## OpenID Connect

To become familiar with OpenID Connect in Budibase, see:

{% page-ref page="oidc.md" %}

## Configuration

### Create the application

Create the budibase application using a new 'App Registration'

![](../../../.gitbook/assets/add-application.png)

Add the application name

![](../../../.gitbook/assets/add-application-2.png)

Ignore the Redirect URI for now.

### Find your configuration details

**Configuration URL**

Visit 'Overview' &gt; 'Endpoints'.

![](../../../.gitbook/assets/configurationurl0.png)

Use the **OpenID Connect metadata document** field as your Configuration URL in Budibase.

![](../../../.gitbook/assets/configurationurl.png)

**Client ID**

Visit 'Overview'

![](../../../.gitbook/assets/clientid.png)

Use the **Application \(client\) ID** field as your Client ID in Budibase.

**Client Secret**

Visit 'Certificates & secrets', click on 'Add client secret', give your secret a description / expiry and save.

![](../../../.gitbook/assets/clientsecret.png)

View your newly created secret

![](../../../.gitbook/assets/clientsecret2.png)

Use the **Value** field as your Client ID in Budibase.

### Add your callback URL

Visit 'Authentication' and enter your callback URL

![](../../../.gitbook/assets/callback%20%282%29.png)

