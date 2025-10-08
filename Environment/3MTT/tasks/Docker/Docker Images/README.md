# 📦 Docker Images: Quick Start Guide

A simple guide to pulling images, building your own Docker image, running containers, exposing ports, and pushing to Docker Hub. Screenshots are in the `img` folder.

---

## 📑 Table of Contents
- [Introduction](#introduction)
- [Pull Images from Docker Hub](#pull-images-from-docker-hub)
- [Run a Container](#run-a-container)
- [Create a Dockerfile](#create-a-dockerfile)
- [Build Your Image](#build-your-image)
- [Run Your Custom Container](#run-your-custom-container)
- [Open Port 8080](#open-port-8080)
- [View Containers](#view-containers)
- [Push to Docker Hub](#push-to-docker-hub)
- [Summary](#summary)

---

## Introduction
Docker images are packages with everything needed to run an app: code, libraries, and tools. You create them with a `Dockerfile` and run them as containers.

---

## Pull Images from Docker Hub

Search for and pull an image:

```bash
docker search ubuntu
```
> ![Search for Ubuntu](img/Docker-search.png)

```bash
docker pull ubuntu
```
> ![Pull Ubuntu](img/docker-pull-ubuntu.png)

List downloaded images:

```bash
docker images
```
> ![List Docker Images](img/docker-images-list.png)

---

## Run a Container

Start a container with an interactive shell:

```bash
docker run -it ubuntu
```
> ![Run Ubuntu Container](img/docker-run-ubuntu.png)

Type `exit` to leave the container.

---

## Create a Dockerfile

A Dockerfile is a script to build your image. Example:

```Dockerfile
FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
EXPOSE 80
```

- `FROM`: base image
- `WORKDIR`: working directory
- `COPY`: copy files
- `EXPOSE`: open port

Create both files:

```bash
nano Dockerfile
nano index.html
```
> ![Dockerfile Content](img/create-dockerfile.png)
> ![HTML File](img/create-index-html.png)

---

## Build Your Image

Build your custom image (named `dockerfile`):

```bash
docker build -t dockerfile .
```
> ![Build Image](img/docker-build-image.png)

---

## Run Your Custom Container

Expose it on port 8080:

```bash
docker run -p 8080:80 dockerfile
```
> ![Run Custom Image](img/docker-run.png)

Open in your browser:  
`http://<your-public-ip>:8080`
> ![Browser Output](img/browser-view.png)

---

## Open Port 8080

If using AWS EC2, add a security group rule:
- Type: `Custom TCP`
- Port: `8080`
- Source: `Anywhere (0.0.0.0/0)`

> ![Inbound Rule](img/add-port-8080.png)

---

## View Containers

List all containers:

```bash
docker ps -a
```
> ![Containers List](img/docker-ps-a.png)

Start a stopped container:

```bash
docker start dockerfile
```
> ![Start Container](img/docker-start.png)

---

## Push to Docker Hub

1. Create a [Docker Hub](https://hub.docker.com) account and repository.
   > ![Create Repo](img/create-dockerhub-repo.png)
2. Tag your image:
   ```bash
   docker tag dockerfile yourdockerhubusername/mynginx:1.0
   ```
   > ![Tag Image](img/docker-tag-image.png)
3. Login:
   ```bash
   docker login
   ```
   > ![Docker Login](img/docker-login.png)
4. Push:
   ```bash
   docker push yourdockerhubusername/mynginx:1.0
   ```
   > ![Push Image](img/docker-push.png)
5. Confirm on Docker Hub:
   > ![Image on Docker Hub](img/dockerhub-image.png)

---

## Summary

- Pulled and searched Docker images
- Built a Dockerfile using NGINX
- Ran and exposed a container on port 8080
- Opened port 8080 for external access
- Tagged and pushed the image to Docker Hub

---

Happy Dockering! 🐳


