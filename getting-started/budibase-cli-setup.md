# Budibase CLI Setup

## Downloading Budibase CLI

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

