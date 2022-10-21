To run Flowify locally:

Requirements:

- Docker
- Docker compose

```bash
curl -Os https://raw.githubusercontent.com/equinor/flowify-documentation/main/docs/assets/docker-compose.yaml
docker compose up -d
```

It will take 1-2 minutes for the local cluster to start. After that, the frontend will be available at [http://localhost:8080](http://localhost:8080)

Flowify will start with an emtpy database. To load the example database:
```bash
docker exec mongo_server mongorestore dump
```

The setup has been tested on:

- Ubuntu 22.04, Ubuntu 20.04, WSL 2
- Docker 20.10, Docker Compose v2.10

Known issues:

- Workspace creation is not available for local run. You can only work with the built-in sandbox workspace.
- Does not work on Chrome OS crostini due to [unsupported kind cluster](https://kind.sigs.k8s.io/docs/user/known-issues/#chrome-os)
- Additional setup required when using [Docker Desktop](https://kind.sigs.k8s.io/docs/user/known-issues/#docker-desktop-for-macos-and-windows). Launching from Docker CLI is not affected.
- Does not work in Github Codespace. We are investigating.