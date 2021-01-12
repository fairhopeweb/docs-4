---
description: Setting up a cluster with Docker and Docker compose
---

# Docker compose

### Installing Docker

The first step to getting your Budibase platform up and running with [Docker](https://www.docker.com/) is to make sure that you have the following installed:

1. [Docker Engine](https://docs.docker.com/engine/install/) - for Windows and OSX this means installing the Desktop client, for Linux follow the instructions for your distro; this will require installing the Docker Engine and CLI, as well as containerd.
2. [Docker Compose](https://docs.docker.com/compose/install/) - follow the instructions for your operating system to install Compose, this controls the orchestration of the Docker containers which make up the Budibase platform.

The pre-requisites for installing Docker are minimal, in general the most important factor is that your OS is up to date - on Linux systems you will need a relatively up to date kernel. To help with this we have provided some scripts to help with installation and setup on a Linux based system, found [here](https://github.com/Budibase/budibase/tree/master/hosting/scripts/linux).

For running in production we recommend the use of a Linux host, if you run into any issues getting this setup we recommend checking the output of [this script](https://github.com/moby/moby/blob/master/contrib/check-config.sh) - if you are missing some services here you may need to perform a distribution upgrade.

### Setting up Budibase

Once you have Docker fully installed the rest of the process should be simple! You'll want to download the following files to your host:

1. [docker-compose.yaml](https://github.com/Budibase/budibase/blob/master/hosting/docker-compose.yaml) - this defines the images used by Budibase and how to orchestrate them.
2. [hosting.properties](https://github.com/Budibase/budibase/blob/master/hosting/hosting.properties) - this contains all the default settings for your Budibase platform.
3. [envoy.yaml](https://github.com/Budibase/budibase/blob/master/hosting/envoy.yaml) - this contains configuration information for the proxy service that directs traffic to the correct services inside the Budibase platform.

Once you have these files downloaded running the platform is as simple as:

`docker-compose --env-file hosting.properties up`

Running the above command in a prompt or terminal will start-up the Budibase cluster, installing the latest images for our required services and setting up a network to run them across - this may take some time to download the necessary resources.

When the cluster is ready you'll see a mixture of log messages from the various services that makeup the cluster - you should now be able to connect from your builder and make use of it! If you run into any issues the easiest way to resolve them would be to get in contact with the team through our official [Discord server](https://discord.gg/aux3PNGTXz).

### Next steps

Now that you have your Budibase platform up there are a few steps you will want to take:

1. [Production usage](../hosting-settings.md) - If this cluster is for a production usage then you will want to change all of the hosting settings to suit your needs and secure your platform properly, information about this can be found [here](../hosting-settings.md).
2. [Advanced options](../advanced-options/) - To proxy requests from a domain and re-map apps to specific paths/sub-domains then you may want to read our documentation around this. 
3. [Using the platform](../builder-settings.md) - To connect to the platform from your Builder you will want to make use of self hosting options in the Builder, information about this can be found [here](../builder-settings.md).

### Further information

For those out there interested in a more advanced setup you may want to make alternations to the `docker-compose.yaml` config file, so just for you we'll cover the various services and their purposes.

1. [CouchDB](https://couchdb.apache.org/) - this is our database service, making use of a docker volume to persist data.
2. [Minio](https://min.io/) - an open source alternative to S3, acting as an object store for files, binary data, attachments and so on.
3. [Envoy](https://www.envoyproxy.io/) - our proxy engine, this provides a single interface by which all services can be communicated with as required.
4. [Budibase Worker](https://github.com/Budibase/budibase/tree/master/packages/worker) - a background service engine which can handle tasks in the background of the main app servers.
5. [Budibase Server](https://github.com/Budibase/budibase/tree/master/packages/server) - the main face of the Budibase platform, providing the APIs which your apps will make use of.

All of these services need to be able to communicate with each other, however they can be hosted separately if desired, as long as they have the correct URLs to reach each other they will function.

