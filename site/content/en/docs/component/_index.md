---
title: "Components"
linkTitle: "Components"
weight: 3
date: 2021-08-31

---

### There are three main categories of components in terms of access.

**Workspace components** is any components that is only available under the workspace that it was built under. By default, all user built components starts as workspace components.

**Marketplace components** is available to all workspaces in Flowify allowing sharing and collaboration. Workspace components can be made into marketplace components by a user of the respective workspace.

**Functional components** are built-in components that allow adding complexity in a workflow. These components allow building workflows with conditional branching and parallalization. Functional components are available to all workspace and cannot be modified.

----------------------------

### There are three types of implementations for components.

**Any** is used as a placeholder.

**Brick** is the basic build block of component. It consists of a docker image, input arguments and outputs.

**Graph** gives further ability to encapsulate more than one brick into a component. It provide a higher degre of abstraction and promote user (workflow builders) experience. It is essentially a workflow with outputs.
