# Concept
When a workflow is submmited, the backend transpiler will construct a Argo Workflows manifest and submit it using Argo Workflows interface.

# Run a workflow
You can run a workflow by on the workflow edit page or on the workspace page. Before the job is sent, you can edit and review the input parameters. The new parameters are not saved. To change defaults input parameters, edit them on the left-hand pane in workflow editor and save as new version

# Following a job status
Job status is continuously updated on the UI. There is also possibility to stop or delete a job.

Stopping a running job will terminate execution on Argo Workflows and the job will be marked as terminated.

Deleteing a job will remove it from the Argo Workflows and stop it if it is currently running