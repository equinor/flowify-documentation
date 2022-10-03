## Concept

Workflow is Flowify's representation of Argo Workflow's [DAG](https://argoproj.github.io/argo-workflows/walk-through/dag/). For the end user, it is a series of component with their outputs connected to others input. When a run is triggered, Flowify will transpile the manifest into Argo Workflow's manifest and submit the job. The progress and results are tracked in [Jobs](./jobs.md)

## Access Control
All workflows are restricted to the workspace that it was created under.

### Create
All workspace user can create workflows

### Modify
All workspace user can modify workflow and publish new version. It is not permitted to modify published version.

### Running the workflow
All workspace user can run workflows in a workspace with/without modifying parameters.

### Delete
Workspace admin can delete workflow

## Building a workflow

We will use the HTTP GET component from [building a brick](./bricks.md#building-a-brick) to fetch a random number from [https://www.randomnumberapi.com/api/v1.0/random?count=1](https://www.randomnumberapi.com/api/v1.0/random?count=10). As the API returns an array of number, try to build a new brick component that extract the first item of an array and set the item as an output.

### Objective
We set an workflow input (a URL) and pass it into the HTTP GET component. The HTTP GET component will output an array of numbers. The array will then passed into the new component you made, extract the first item and set it as output of the component. Note that workflow differs from component and does not have output.

### Adding components

### Linking the components

### Adding workflow inputs

### Setting Secrets

### Volume mount