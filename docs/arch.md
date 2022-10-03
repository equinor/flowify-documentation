
# Deployment architecture
``` mermaid
C4Context
    title Flowify deployment
    Person(customerA, "User")

    Deployment_Node(b0, "Kubernetes") {


        Node(b1, "Flowify namespace") {
            Container(SystemH, "OAuth2 proxy", "Authorization to UI")  
            Container(SystemE, "Nginx - Flowify Frontend", "Serves Flowify UI")    
            Container(SystemC, "Flowify server", "Flowify API and transpiler") 
            ContainerDb(mongo, "MongoDB")


            Container(SystemC, "Flowify server", "Flowify API and transpiler") 
            ContainerDb(artifact, "Artifacts storage") 
            Container(SystemI, "Argo Workflows", "Flowify API and transpiler")
            
        }
        Node(b2, "Workspace namespace") {  
            Container(task, "Workflow tasks") 
            Component(SystemA, "Secrets")  
            Component(SystemB, "Volume mount")        
        } 
    }
    Rel(task, SystemA, "Uses")
    Rel(task, SystemB, "Uses")
    BiRel(SystemI, task, "Uses")
    BiRel(SystemI, artifact, "Uses")
    BiRel(SystemC, mongo, "Uses")
    BiRel(SystemC, SystemI, "Uses")
    BiRel(customerA, SystemH, "Uses")
    BiRel(SystemC, SystemE, "RESTapi")
    BiRel(SystemH, SystemE, "HTTPS")





    UpdateRelStyle(customerA, SystemAA, $textColor="blue", $lineColor="blue", $offsetX="5")
    UpdateRelStyle(SystemAA, SystemE, $textColor="blue", $lineColor="blue", $offsetY="-10")
    UpdateRelStyle(SystemAA, SystemC, $textColor="blue", $lineColor="blue", $offsetY="-40", $offsetX="-50")
    UpdateRelStyle(SystemC, customerA, $textColor="red", $lineColor="red", $offsetX="-50", $offsetY="20")
    

``` 