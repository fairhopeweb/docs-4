---
description: Setting up a cluster with Docker and Docker compose
---

# Docker compose

![](../../.gitbook/assets/youtube-self-host-video-thumbnail.png)

## Installing Docker

The first step to getting your Budibase platform up and running with [Docker](https://www.docker.com/) is to make sure that you have the following installed:

1. [Docker Engine](https://docs.docker.com/engine/install/) - for Windows and OSX this means installing the Desktop client, for Linux follow the instructions for your distro; this will require installing the Docker Engine and CLI, as well as containerd.
2. [Docker Compose](https://docs.docker.com/compose/install/) - follow the instructions for your operating system to install Compose, this controls the orchestration of the Docker containers which make up the Budibase platform.

The pre-requisites for installing Docker are minimal, in general the most important factor is that your OS is up to date - on Linux systems you will need a relatively up to date kernel. To help with this we have provided some scripts to help with installation and setup on a Linux based system, found [here](https://github.com/Budibase/budibase/tree/master/hosting/scripts/linux).

To run the Budibase platform the minimum requirements are simply those required to install and run Docker, these can be found in the [Docker documentation](https://docs.docker.com/).

For running in production we recommend the use of a Linux host, if you run into any issues getting this setup we recommend checking the output of [this script](https://github.com/moby/moby/blob/master/contrib/check-config.sh) - if you are missing some services here you may need to perform a distribution upgrade.

## Setting up Budibase

Once you have Docker fully installed the rest of the process should be simple! You'll want to download the following files to your host:

1. [docker-compose.yaml](https://raw.githubusercontent.com/Budibase/budibase/master/hosting/docker-compose.yaml) - this defines the images used by Budibase and how to orchestrate them.
2. [hosting.properties](https://raw.githubusercontent.com/Budibase/budibase/master/hosting/hosting.properties) - this contains all the default settings for your Budibase platform.
3. [envoy.yaml](https://raw.githubusercontent.com/Budibase/budibase/master/hosting/envoy.yaml) - this contains configuration information for the proxy service that directs traffic to the correct services inside the Budibase platform.

{% hint style="danger" %}
If you are planning to run the cluster in a production environment, you will want to update some of the settings before moving on, importantly the `HOSTING_KEY` found in the `hosting.properties`. Information about this can be found [here](../hosting-settings.md).
{% endhint %}

{% hint style="warning" %}
If you have an ARM based CPU, you will have to make a slight update to your `docker-compose.yaml` . Update the `couchdb-service` part of your compose config with `platform: amd64`

```text
 couchdb-service:
    platform: linux/amd64
    ...
```
{% endhint %}

Once you have these files downloaded running the platform is as simple as:

```text
docker-compose --env-file hosting.properties up
```

Running the above command in a prompt or terminal will start-up the Budibase cluster, installing the latest images for our required services and setting up a network to run them across - this may take some time to download the necessary resources.

When the cluster is ready you'll see a mixture of log messages from the various budibase services. If you run into any issues the easiest way to resolve them would be to raise a discussion on our [github discussions community](https://github.com/Budibase/budibase/discussions).  
  
You can access your new installation at `<server-ip>:10000`

Happy Building!

## Further information

For those out there interested in a more advanced setup you may want to make alternations to the `docker-compose.yaml` config file, so just for you we'll cover the various services and their purposes.

1. [CouchDB](https://couchdb.apache.org/) - this is our database service, making use of a docker volume to persist data.
2. [Minio](https://min.io/) - an open source alternative to S3, acting as an object store for files, binary data, attachments and so on.
3. [Envoy](https://www.envoyproxy.io/) - our proxy engine, this provides a single interface by which all services can be communicated with as required.
4. [Budibase Worker](https://github.com/Budibase/budibase/tree/master/packages/worker) - a background service engine which can handle tasks in the background of the main app servers.
5. [Budibase Server](https://github.com/Budibase/budibase/tree/master/packages/server) - the main face of the Budibase platform, providing the APIs which your apps will make use of.

All of these services need to be able to communicate with each other, however they can be hosted separately if desired, as long as they have the correct URLs to reach each other they will function.

