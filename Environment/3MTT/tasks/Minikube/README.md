

# Kubernetes
## What is kubernetes?
K8S is an open-source container orchestration platform that automates the deployment, scaling & management of containerized apps. Developed by Google and later open-sourced. K8S is widely adopted for its ability to streamline and automate the deployment, scaling & of containerized apps in a highly efficient & consistent manner. It provides a centralized platform that abstracts away the complexities of distributed systems, offering features such as automated load balancing, self-healing capabilities and seamless rolling updates.

# minikube
minikube hands-on.

### Setting up minikube on VM

1. Install `docker` first
![](img/01.Installminikube.png)

2. Install `minikube` next
![](img/02.installandcheckdir.png)

3. Start `minikube`
![](img/03.startminikube.png)

4. Confirm `minikube` up

![](img/04.checkstatus.png)

### Working on minikube

Here we get to use simple k8s commands using `kubectl`

5. List pods

![](img/05.listpods.png)

6. Inspect pod

![](img/07.runpod.png)

7. Run a pod then get its name

![](img/08.getpods.png)
![](img/09.describepod.png)

9. Delete pod
![](img/10.deletpod.png)