This feature is experimental.
## Concept

``` mermaid
flowchart LR
    A[Random number generator] --> |2|B{Run A if output > 1, else B}
    B -->|2| C[A]
```

``` mermaid
flowchart LR
    A[Random number generator] --> |0|B{Run A if output > 1, else B}
    B -->|0| C[B]
```