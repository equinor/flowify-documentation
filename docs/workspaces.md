Flowify utilize Role-Base Access Control (RBAC).

The lowest level access control is handled by workspace. Each workspace has two roles. One for workspace admin and another for workspace user.

All workflows in a particular workspace are executed in the same Kubernetes namespace. Other Flowify objects (Components, Workflows, Secrets, Jobs and Volume mounts) are restricted within their own workspace

Workspace admin has permission to:

- Add/Modify/Delete any object inside the workspace (e.g. Secrets, Workflows, components...)

Workspace user can:

- Run any existing workflow with new/existing parameters
- Create new components and workflows

Modifications to any existing workflows and components can only be carried out by:

- Workspace admin
- TO BE IMPLEMENTED: Workspace user that created the workflow/component (i.e. Creator)