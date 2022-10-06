## Concept
Volume mount allows mounting a of cloud storage volume on the container without explicitly carrying out download/upload operations inside the container. It can be used to load large data set from Blob Storage and take advantage of built-in caching/buffering capabilities of a CSI driver. 

An example of CSI driver is [Azure Blob Storage CSI](https://github.com/kubernetes-sigs/blob-csi-driver). However, it is advised to limit the usage of volume mount in order to keep data flow lineage explicit to the end user.

Mounting of a volume is handled by Kubernetes. Flowify and Argo Workflows does not verify if the correct CSI driver is installed on the Kubernetes cluster. The Flowify volume mount configuration is transpiled into [`CSIVolumeSource`](https://argoproj.github.io/argo-workflows/fields/#csivolumesource) in Argo Workflows manifest.


## Access Control
Workspace admin can create, modify and delete Volume mount. The reference to the volume mount is available to all workspace user for use in workflows.

## Add volume mount to workspace
Go to admin page

See [Components](./bricks.md#add-volume-mount) and [Workflow](./workflows.md#volume-mount) for usage