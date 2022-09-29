# Welcome to Flowify

Flowify is a no-code portal for creating and running workflows on Argo Workflows.

- Developers can create sharable components for no-code users
- No-user uses a drag-and-connect user-interface to build workflows from components
- Workspaces implementation allows granular access control
- Build on top of Argo Workflow to provide a robust workflow executor

## Flowify consists of two components that work in tandem

- A backend server written in Golang for:
    - Two-way communication with Argo Workflows
    - Transpile frontend manifest into Argo Workflow manifest
    - Handle secrets and volume mount through Kubernetes
    - Implement access control

- A React based UI for:
    - Creating Flowify frontend manifest from GUI
    - Allowing users to use Argo Workflows without knowing Argo Workflows

