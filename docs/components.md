Component is the basic building block of a workflow. It can be a single container (brick) or a series of container (Graph)

A brick component is the most basic form of component. It consist of a single OCI compliant container and input/output parameters.

A graph component allow you to encapsulate a workflow like object into a component and improve user experience. 

A special type of component: Any is available as a placeholder. It allows you to mock a component and workflow with inputs and outputs for conceptualization and subsequent implementation.

## Example components

Example container images for components are located [here](https://github.com/equinor/?q=flowify-component&type=all&language=&sort=).

## Access control

Components are available across all workspaces. Implementation of workspace scoped components is under development.

### Create
All user can create components

### Modify
All user can modify component and publish new version. It is not permitted to modify published version to avoid breaking any existing workflows.

### Delete
Delete is not permitted to avoid breaking any existing workflows. A deprecation tag is under development.