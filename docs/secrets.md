## Concept
Secrets allow passing sensitive information to the workflows such as login credentials to an API.

Secrets are workspace scoped and stored as Kubernetes secrets in workspace own Kubernetes namespace. The reference to the secrets is transpiled by Flowify into [Argo Workflow manifest](https://argoproj.github.io/argo-workflows/walk-through/secrets/). They are available as environment variables in the container.

## Access Control
Workspace admin can create, modify and delete secrets. The reference to the secrets is available to all workspace user for use in workflows.

Once a secret is added or modified, the secret value is not available to view on the frontend.

## Usage