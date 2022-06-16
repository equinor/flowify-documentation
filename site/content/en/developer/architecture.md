---
title: "Architecture"
linkTitle: "Architecture"
weight: 1
date: 2021-09-12

---

Flowify consists of a frontend written in Typescript/React and a backend server written in Golang. Communications between them are conducted using REST APIs.

All user should primarily interact with Flowify using the frontend including building components, building workflows and executing workflows. The backend server consists of a REST API server which handle requests from the frontend and 

Architecture contract
https://acdocs.app.radix.equinor.com/contracts/flowify/

Deployment architecture of Flowify on Equinor's OMNIA Aurora
![Photo](../images/flowify_architecture.png)
