## Meetup-topics

### 1. Openshift for Developers and Operators  
   * deploy using s2i  
   * deploy using docker image
   * deploy using binary file WAR
   * deploy using binary file JAR
   * deploy using dockerfile
   * scale application
   * promote app to qa
   * setup ci/cd pipeline
   * mark node for maintenance
   * evacuate node and patch
   * setup health checks
   * setup resource constraints
   * setup autoscaling
   * using configmaps
   
### 2. Openshift for MEAN stack developers
   * deploy nodejs app using s2i
   * deploy mongodb
   * debug nodejs application w/ vscode
   * scale application
   * setup ci/cd
   * source code updates
   * link nodejs application with mongodb

### 3. Opeshift for Java developers
   * WIP
### 4. Kubernetes / Openshift the hardway
   * Kubernetes / Openshift architecture overview
   * Provision Controllers / workers on GCP.
   * Generate certs
   * Bootstrap  HA etcd
   * Bootstrap HA controllers
   * Bootstrap HA api servers
   * Bootstrap workers
   * Setup networking
   * Deploy sample app 

### 5. Microservices in Openshift
   * Deploy mysql
   * Deploy python email service
   * Deploy mongodb
   * Deploy nodejs users service
   * Deploy java twitter api service
   * Deploy php/angular frontend application
   * link all these apps together
   * Test twitter share app.
   
   
### 6. Zero to hero in 30 mins with kubernetes and openshift
   * deploy application based image with dockerfile  
   * convert source directly to docker image using without writing dockerfile!
   * patch base image and propogate fix automatically
   * deploy application using binary file (JAR or WAR)
   * deploy database with persistant volume, using dynamic storage.
   * scale up your app, manual and autoscale
   * setup CI/CD pipeline in 1 min
   * promote application to QA / PROD with approval using jenkins
   * Update source and see changes propogating to dev,qa
   * Applying complex configurations to apps across dev/qa/prod

### 7. Istio service mesh for k8s and openshift
   * Setup Istio service mesh on openshift
   * Deploy sample microservices application
   * Demo ciruit breaking & service mesh 

### 8. Microservices with Openshift & Istio
> While Microservices Development is greatly simplified by Openshift , microservices Ops are greatly simplified by Istio
> These two are a great combination for rapid development and deployment of microservices. 
> In this workshop we will be looking at different ways to containerize an application using dev tools provided by openshift and dealing with day 2 operations using Istio along with k8s NetworkPolicies
> In detail
* 4 ways of contaienerizing existing applications
  * source 2 image
  * from WAR/JAR file
  * from Dcokerfile / DockerImage
* Deploy a store microservices example
* Traffic split canary deployment based on location of user
* Observability of microservices using Istio integrations with grafana , prometheous and zipkin
  * Getting 
