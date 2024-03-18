# EIMIS Synapse docker image

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/eimis-ans/eimis-synapse-image/lint.yml?label=lint&logo=github)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/eimis-ans/eimis-synapse-image/publish.yml?label=publish&logo=github&branch=main)
![GitHub License](https://img.shields.io/github/license/eimis-ans/eimis-synapse-image)

This repo is meant to build and publish a customized version of [Synapse](https://github.com/element-hq/synapse/). A instant messaging server implementing [Matrix](https://matrix.org/) protocol.

The docker image is published to [Docker Hub](https://hub.docker.com/r/eimisans/eimis-synapse). The version will be :
`v[SYNAPSE_VERSION]-[EIMIS_INCREMENTAL_NUMBER]`

Files and modules included in the image

- [Synaspe S3 storage provider](https://github.com/matrix-org/synapse-s3-storage-provider)
- Html templates

## Try it out locally

add the following to your `/etc/hosts` file:

```text
127.0.0.1       matrix.local
127.0.0.1       idp.local
```

```bash
docker compose up -d
```

> [!TIP]
> If started with `docker compose watch`, keycloak image will be rebuilt restarted every time a change is detected in this folders

You can then access:

- Keycloak at [http://localhost:8080](http://localhost:8080)
  - login with `admin`/`admin`
  - You can then go to eimis-realm and create a user
- Element at [http://localhost:1983](http://localhost:1983)
  - Click on `EIMIS Connect` and login with the user you created in Keycloak
- Mailhog at [http://localhost:8025](http://localhost:8025)
  - You should see a e-mail sent with a code
  - Paste it in the login screen
- Synapse at [http://localhost:8008](http://localhost:8008)

> [!CAUTION]
> The dev / test environment is pre-configured with secrets and certificats that should obviously not be used in production.
