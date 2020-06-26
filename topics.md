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
* Four ways of contaienerizing existing applications
  * source 2 image
  * from WAR/JAR file
  * from Dockerfile / DockerImage
* Deploy a store microservices example
* Understaing Istio Ingress & Egress
* Understanding Istio Route Rules
  * Traffic split canary deployment based on location of user
  * Simple Timeout/Retries
  * Simple Circuit breaker
* Understaing Istio Policies
  * Rate limiting
  * Getting custom metrics from Mixer
* Observability of microservices using Istio integrations with grafana , prometheous and zipkin
  * WAlkthrough of Istio-grafana dashboard
  * Distributed tracing with zipkin, how to achieve this by making simple changes to app.
* Testing for failures
  * Fault injection
* Securing services
  * Isolating networks
  * Applying k8s network policies 
  * applying mTLS auth between 
  * Applying Istio ca for ent-to-end encryption (if this is ready)


### 9. Microservices with Openshift and Istio (short)

There is large focus in industry to make apps cloud native and in this session we will explore tools / methods to build application in cloud native way.

1)  API first design with Open API specification and code generation tools (apicurio)
2)  Containerisation of code using source to image method 
3)  Deploying/Scaling containers on kubernetes 
4)  Securing microservice API's  without writing code into apps using istio-auth
5)  Refactor / development life cycle using online code editor (eclipse che) 
6)  Visibility and Day 2 operations on microservices using istio and kiali 


In this demo-driven presentation, you will learn how to design, package, deploy, scale, secure and monitor your application using Kubernetes and Istio service mesh.

Audience can learn about end to end tools / methods that will help them build application in a cloud native way  using right tools for right tasks with a major focus on productivity and time to market.


### 10. CI/CD on kubernetes with Github Actions

Github actions is free and an extensible platform to implement CI/CD and more for microservices on kuberentes.

In this session we will discuss on how biqmind implemented continuous integration/delivery pipelines for our internal services, 
best practices and things we learnt.

How to build, test, secure and promote container workloads using github actions & kubernetes.  
promotion process includes use of using of tags to promote major multi-service releases  and minor patch releases on individual services for more agility.

Using matrix testing to test application on various midddleware versions or different versions of kuberentes in case application is a kubernetes operator.

We will also look into how github actions can be extended to write your own custom actions using Javascript SDK and Dockerfiles.

