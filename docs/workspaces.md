Flowify utilize Role-Base Access Control (RBAC).

The lowest level access control is handled by workspace. Each workspace has two roles. One for workspace admin and another for workspace user. See [deployment section](./roles.md) for adding the required roles to workspaces.

All workflows in a particular workspace are executed in the same Kubernetes namespace. Access to workflows, Secrets, Jobs and Volume mounts are restricted within their own workspace.

Workspace admin has permission to:

- Add/Modify any object inside the workspace (e.g. Secrets, Workflows, components...)

Workspace user can:

- Run any existing workflow with new/existing parameters
- Create new components and workflows

More details on access control for various Flowify objects are under their respective documentations.
