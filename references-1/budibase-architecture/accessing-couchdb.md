---
description: How to access Budibase's underlying database, CouchDB
---

# Accessing CouchDB

{% hint style="info" %}
This applies to self-hosted deployments only
{% endhint %}

Budibase uses CouchDB to store:

* Metadata about your apps and deployment
* Data stored when using Budibase's in-built tables
* Audit logs

You have full access to CouchDb, via [Fauxton](https://couchdb.apache.org/fauxton-visual-guide/index.html) - the official CouchDB client.

You may access Fauxton via the URL: `your-budibase-host/db/_utils/#`

However, you will need a username and password to log in. You may find these in your `.env` file, which lives in the same directory as your `docker-compose.yaml`. 



Use the following values from your `.env` file: 

* `COUCH_DB_USER`
* `COUCH_DB_PASSWORD`
