---
title: "Workflow"
linkTitle: "Workflow"
weight: 2
date: 2021-03-09
description: >
  Building a workflow
---

### Basic idea
A workflow is a series of steps that is ready to be run. The steps are defined as components in Flowify. Each component has input(s) and output(s). A workflow can be made by linking component output(s) to component input(s). Inputs for workflow can also be defined and link to the input of components. When you run a workflow, it creates a Job.

All users in a workspace can create, edit and run workflows.

-------------------------
### Creating a workflow

**Add new workflow in a workspace**
![Photo](./images/add_wf.png)

**Click the plus icon to add components to the workflow**
![Photo](./images/add_comp1.png)

**Add the required components**
![Photo](./images/add_comp.png)

**Connect output to input by doing drag-and-drop on the node (blue dot). Hover your mouse on the node to get more information of the input/output. You can only connect node with the same media type**
![Photo](./images/connect.png)

**Create a new input parameter for the workflow**
![Photo](./images/new_input.png)

**Fill in the name and the value of the input parameter. The value can be changed before running the workflow. Choose the correct media type (data type): string (text) or number**
![Photo](./images/fill_input.png)

**To pass a secret into the workflow, select secret under input type**
![Photo](./images/new_secret.png)

**All the workspace secret will be available to choose**
![Photo](./images/fill_secret.png)

**Connect workflow input or secrets into component(s) in the same way as connecting components**
![Photo](./images/connect_input.png)

**To delete a connection, zoom in, click on the line (It will become bold) and then press backspace**
![Photo](./images/del_connection.png)

**After clicking run workflow on the left, you will be able to edit the input parameters and/or add description to the job that will be created.**
![Photo](./images/run_wf.png)