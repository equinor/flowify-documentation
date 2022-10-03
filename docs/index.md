# Welcome to Flowify

Flowify is a no-code portal for creating and running workflows on Argo Workflows.

- Developers can create sharable components for no-code users
- No-user uses a drag-and-connect user-interface to build workflows from components
- Workspaces implementation allows granular access control
- Build on top of Argo Workflow to provide a robust workflow executor

Flowify is not just a Argo Workflows builder.

- Easy to share re-usable components
- Version control for workflows and components
- Designed to make data flow more explicit while Argo Workflows handles execution flow
- No Argo Workflows knowledge is needed for the end user
- Transpilation layer provides flexibility and allows future implementation of other executor

## Flowify consists of two components that work in tandem

- A [backend server](https://github.com/equinor/flowify-workflows-server) written in Golang for:
    - Two-way communication with Argo Workflows
    - Transpile frontend manifest into Argo Workflow manifest
    - Handle secrets and volume mount through Kubernetes
    - Implement access control

- A [React based UI](https://github.com/equinor/flowify-workflows-ui) for:
    - Creating Flowify frontend manifest from GUI
    - Allowing users to use Argo Workflows without knowing Argo Workflows

