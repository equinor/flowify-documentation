This feature is experimental.
## Concept
Flowify has a built-in Map component to allow parallel running of components. A map component wrap around a brick/graph component with the same inputs and outputs. The map component needs to have one input as parameter array. A workflow will spawn a new component for each item in the parameter array. At the end of the run, outputs will be aggregated into an parameter array.
``` mermaid
flowchart LR
    A[Input array 1, 2] -- 1 ---B[Multiply by 2]
    A[Input array 1, 2] -- 2 ---C[Multiply by 2]
    B --> |2| D[Output array 2,4]
    C --> |4| D   
```