# Accessing MinIO



{% hint style="info" %}
This only applies to self-hosted deployments
{% endhint %}

Budibase uses MinIO object store, to store:

* Web front-end files
* Attachments

You have full access to MinIO, via the official client.

Before you access the MinIO client, follow these steps:

1. Enable MinIO browsing. Your `docker-compose.yaml` should contain a setting called `MINIO_BROWSER` - make sure its value is `on`
2. If you made a change to your `docker-compose.yaml`, you will need to save the file and restart your cluster.
3. Now, find your access key and secret. Your `.env` file should contain these values
   * `MINIO_ACCESS_KEY` and
   * `MINIO_SECRET_KEY`

Now you should be able to access MinIO via the URL `your-budibase-host/minio`
