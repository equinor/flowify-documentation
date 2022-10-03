## Concept

The brick component is an representation of Argo Workflow's [`Container template`](https://argoproj.github.io/argo-workflows/fields/#container). The implementation at run time is handled by Argo Workflow. Flowify is responsible for generating the `Container template` when used in a workflow. 

The core of a brick component consists of a OCI compliant container image. It is then wrapped around by a layer of input/output parameters, secrets and volumes. They are applied to the container by Argo Workflow as follows:

- Input parameters: Appened to the `Entrypoint` of the container
- Output parameters: Copied and its value extracted from the container on completion
- Input/Output Artifacts: Handled by Argo Workflow and copied to and from the container
- Secrets: As environmental variables
- Volumne mount: Mount to the container using a corresponding CSI driver

One difference on the user level to Argo Workflow is Flowify handle Artifacts as Input/Output instead of a separate entity. It makes allows a more explicit and declarative data flow.

## Private container registry

Pulling of container images from private registry is handled either by [Argo Workflows](https://github.com/argoproj/argo-workflows/blob/master/examples/image-pull-secrets.yaml) or [Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/#add-imagepullsecrets-to-a-service-account). Flowify does not verify if the cluster has permission to pull the image.

## Building a brick

Prerequisities:

- Basic knowledge of container
- A published OCI compliant container image

### Basic setup
In this example we will build a brick component that perform a HTTP GET request and save the response as output

Example image: `ghcr.io/equinor/flowify-component-http:0.0.1` 

[Repository](https://github.com/equinor/flowify-component-http)

As Flowify uses Argo Workflows as executor, `ENTRYPOINT` must be defined explicitly in command:

`Args` are appended to the `ENTRYPOINT` command. They can be fixed (e.g. `http_method=get`) or variables from input parameters (e.g. `url=`). In this example, the full run command will be 

`node ./src/index.js http_method=get url=<INPUT_URL_FROM_FLOWIFY_PARAMETER>`

The container saves the GET response under `/tmp/files/output.json`. We will need define an output on the left pane and mapped it to Results on the right pane. Flowify/Argo Workflows will extract values from the file and passes to the next component as input.

### Using files (Artifacts)
#### As input

#### As output
### Add secrets

### Add volume mount

### Versioning and modifications