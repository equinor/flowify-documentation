## Concept

Flowify allows developer to present a workflow object to the end-user as a component. It adds a level of encapsulation and improvement to user experience. A graph component itself is a [DAG](https://argoproj.github.io/argo-workflows/walk-through/dag/) in Argo Workflows. When used in a workflow, the graph component is representated by a [nested DAG](https://github.com/argoproj/argo-workflows/blob/master/examples/dag-nested.yaml) in Argo Workflows.

## Building a graph

Building a graph is similar to building a workflow. Please see [Workflows](./workflows.md#building-a-workflow) for details.