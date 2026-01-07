# WP Local Environment

This repo contains default configuration for setting up a development environment for our plugins.

## Pre-requisites

- Node
- Yarn
- Git
- Composer
- Docker

### Node

To set up your repo for active development work, make sure you have **Node** installed on your machine. To do this, you can head over to [node.js.org/en](node.js.org/en) to download the runtime environment. This will provide you the ability to run `node` commands directly from your terminal and also install `node` packages using **NPM**.

Once you have **Node** installed you can verify by opening a terminal to see if you can check its version like so:

```bash
node -v && npm -v
```

### Yarn

Yarn is a faster & more efficient dependency management tool and it is advisable to use this to manage your dependencies.

To install, run the following commands like so:

```bash
npm install -g yarn
```

To verify it is installed, please run:

```bash
yarn -v
```

### Git

Git is a version control system that enables software engineers collaborate & work together easily. Download the CLI for your operating system using the following link:

```bash
https://git-scm.com/downloads
```

### Composer

Composer is a PHP dependency management tool. The easiest way to get it is to use `brew` like so:

```bash
brew install composer
```

### Docker

We use Docker for managing our WP instances easily. To get this, please visit the link:

```bash
https://docker.com/get-started
```

## Setting up your Local Development Environment using .wp-env

To setup, please run the following command:

```bash
yarn setup
```

This should spin up a Wordpress development site at:

```bash
http://appworld.localhost:8080
```

You should be able to log in using the default user should be `admin` and the default password should be `password`.

## Switching Versions of WordPress or PHP

### WordPress

Please, proceed to the `.wp-env.json` file, change the `"core"` version to the new version you'd like to install. For example, to install WordPress 6.4, change the line to `"core": "WordPress/WordPress#6.4"`.

Now rebuild the WP instance by running the following command:

```bash
yarn rebuild
```

### PHP

Please, proceed to the `.wp-env.json` file, change the `"phpVersion"` to the new version you'd like to install. For example, to install PHP 8.4, change the line to `"phpVersion": "8.4"`.

Now rebuild the WP instance by running the following command:

```bash
yarn rebuild
```

## Setting up your Local Development Environment using Docker

If you use Windows, you might have challenges setting up your repo using `wp-env`. To workaround this, you can use the docker configuration to setup your local environment.

To setup, please run the following command:

```bash
yarn docker
```

This should spin up a Wordpress development site at:

```bash
http://localhost:8080
```

### WordPress

Please, proceed to the `docker-compose.yml` file, change the `image` version to the new version you'd like to install. For example, to install WordPress 6.4, change the line to `image: wordpress:6.4`.

Now rebuild the WP instance by running the following command:

```bash
yarn docker-rebuild
```