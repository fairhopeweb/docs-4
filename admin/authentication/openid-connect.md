---
description: >-
  OpenID Connect is a simple identity layer built on top of the OAuth 2.0 protocol, which allows clients to verify the identity of an end user based on the authentication performed by an authorization server or identity provider (IdP), as well as to obtain basic profile information about the end user.
---

# OpenID Connect

In addition to the built-in Google integration, Budibase supports a custom OpenID Connect integration with the option to customize how this looks on the login portal. 

## Setup

To enable it for your identity provider follow the setup steps below.

### Configure your identity provider

Any provider that supports the OpenID Connect protocal can be integrated into Budibase, you may even implement your own. Guides on how to setup some of the most common providers can be seen below:
- [ADFS by Microsoft]()
- [Auth0]()
- [Azure AD]()
- [Okta]()
- [OneLogin]()

### Configure OpenId Connect in Budibase

Visit the 

### Customize your login

## Important information

Some additional details on the OpenID Connect integration are highlighted below

**User provisioning**

Unlike the Google integration which requires a local user account to exist in advance, OpenID connect users are created in Budibase automatically when they log in for the first time. It is important that only the users you wish to access Budibase have been assigned to the application configured in your identity provider. 

You may still use email onboarding to create an account for a user in advance, provided the email connected to your user is consistent with the user's email in your identity provider.

