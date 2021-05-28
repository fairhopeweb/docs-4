---
description: >-
  This page walks you through the process of getting the budibase platform up
  and running.
---

# Getting Started

## Self Hosting Budibase

Budibase is open source, self hosted software. 

You only have to set up your budibase instance **once**. Once your instance is up and running, other members of your team can build and interact with budibase simply by accessing the URL that you have hosted your budibase instance on.

## Prerequisites

To complete this guide, you must have docker and docker compose installed on your machine. Follow the instructions for downloading docker for [Windows](https://docs.docker.com/docker-for-windows/install/), [Mac](https://docs.docker.com/docker-for-mac/install/), and [Linux](https://docs.docker.com/engine/install/ubuntu/) machines.

{% hint style="info" %}
Docker is a platform that makes it much easier to automate  the running of software programs. It allows us to provide a smooth and consistent budibase experience across all the major operating systems.
{% endhint %}

## Downloading Budibase

{% hint style="info" %}
The budibase CLI is how you initialise, manage and update your budibase installation.
{% endhint %}

Downloading the Budibase CLI is a fairly straight forward process. If you have NodeJS installed, you can simply run the following to install the budibase CLI:

```
$ npm i -g @budibase/cli
```

Alternatively, you can just download the budibase CLI for your operating system here:

* [Windows](https://github.com/Budibase/budibase/releases/download/v0.9.1/cli-win.exe)
* [Mac](https://github.com/Budibase/budibase/releases/download/v0.9.1/cli-macos)
* [Linux](https://github.com/Budibase/budibase/releases/download/v0.9.1/cli-linux)

If you do download from the above links, the steps are slightly different compared to downloading the CLI from NPM. After downloading the CLI, you will have to make it executable. Let's take the `cli-linux` for example:

```
# optional - if you have already downloaded this just navigate to the file
wget https://github.com/Budibase/budibase/releases/download/v0.9.1/cli-linux

chmod +x cli-linux

# optional - rename to budi
mv cli-linux budi
```

When following the rest of this guide, when you see the `budi` command being used, you will need to replace it with:

```
./budi
```

## Running Budibase

Once the CLI is installed, navigate to the directory where you would like to store the files for your budibase installation, and run:

{% code title="budi hosting --init \# or ./cli-linux hosting --init" %}
```bash
? This will create multiple files in current directory, should continue? Yes

# Feel free to configure your port
? Please enter the port on which you want your installation to run:  10000

Configuration has been written successfully - please check .env file for more details.
```
{% endcode %}

## First Time Budibase Setup

You can now start the budibase services with the following command.

{% code title="budi hosting --start" %}
```bash
Starting services, this may take a moment.
Services started, please go to http://localhost:10000 for next steps.
```
{% endcode %}

## Next Steps

That's it! Your budibase installation is now up and running. Go to the URL of your new installation to start using budibase!

### Creating Your Admin User

Every budibase installation must have an **admin user**. This user is responsible for the administration of the budibase installation, and has total control over all aspects of budibase. Enter the admin and password for your admin user, and click "Create admin user".

![](.gitbook/assets/screenshot-2021-05-21-at-10.27.37%20%281%29.png)

You will then be asked to log in with your new admin user.

![](.gitbook/assets/screenshot-2021-05-21-at-10.42.48.png)

After you log in, you will be taken to the budibase **portal.** The portal is where budibase users manage their apps, configuration settings, and much more.

### Creating Your First App

The basic budibase setup is now complete. You have reached the summit of this mountain, and the end of this guide. You can now create your first budibase app by following the prompt on screen. You can find information about building apps with budibase throughout the rest of 

![](.gitbook/assets/screenshot-2021-05-21-at-11.03.04.png)

There are a few things however, that will enhance your budibase experience.

#### SMTP/Email Configuration

Set up email/SMTP here.

#### \(Advanced\) Reverse Proxy Configuration

Set up NGINX to sit in front of your budibase installation [here](self-hosting/advanced-options/reverse-proxy.md).

## Managing Your Budibase Installation

### Updating Budibase

If you want to receive those sweet, sweet updates. You can update your budibase installation using the budibase CLI. Simply run the following to get the latest and greatest.

```bash
budi hosting --update 
```

