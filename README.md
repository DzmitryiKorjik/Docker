# Docker Setup

This repository contains the necessary files to set up a Docker environment with Apache, PHP, MySQL, phpMyAdmin, and Jupyter Notebook.

## Clone the Repository

First, clone the repository from GitHub:

```sh
git clone https://github.com/DzmitryiKorjik/Docker.git
cd Docker
```

## Files

### Dockerfile

The `Dockerfile` sets up an Apache server with PHP 8.2 and necessary PHP extensions.

### docker-compose.yml

The `docker-compose.yml` file defines the services and configurations for the Docker containers.

- **apache-php**: Runs an Apache server with PHP.
- **mysql**: Runs a MySQL database server.
- **phpmyadmin**: Provides a web interface for MySQL.
- **jupyter**: Runs a Jupyter Notebook server.

## Usage

1. **Build and start the containers**:
    ```sh
    docker-compose up --build
    ```

2. **Access the services**:
    - Apache server: `http://localhost`
    - phpMyAdmin: `http://localhost:8081`
    - Jupyter Notebook: `http://localhost:8888`

## Volumes

- `./www`: Mounted to `/var/www/html` in the Apache container.
- `./apache-config`: Mounted to `/etc/apache2/sites-available` in the Apache container.
- `mysql_data`: Named volume for MySQL data.
- `./notebooks`: Mounted to `/home/jovyan/work` in the Jupyter container.

## Environment Variables

- `APACHE_RUN_USER`, `APACHE_RUN_GROUP`: Configures Apache user and group.
- `XDEBUG_MODE`, `XDEBUG_CONFIG`: Configures Xdebug for PHP.
- `MYSQL_ROOT_PASSWORD`, `MYSQL_DATABASE`, `MYSQL_USER`, `MYSQL_PASSWORD`: Configures MySQL.
- `PMA_HOST`, `MYSQL_ROOT_PASSWORD`: Configures phpMyAdmin.
- `JUPYTER_ENABLE_LAB`: Enables JupyterLab.

## Custom Commands

- The Jupyter container installs additional Python packages and starts the notebook server.

