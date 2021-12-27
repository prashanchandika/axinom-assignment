# Axinom Assignment

## Docker Setup

Docker setup contains of three files:

- Dockerfile
- Docker-compose.yml
- html

The Setup can easily be started executing **docker-start-web.sh** file on the root directory.

### Prerequisites:

- Docker engine with docker-compose installed on the host machine.

### Usage:

- git clone [https://github.com/prashanchandika/axinom-assignment.git](https://github.com/prashanchandika/axinom-assignment.git)
- cd axinom-assignment
- chmod +x docker-\*.sh
- docker-start-web.sh

In order to shut down the Docker setup, execute the **docker-stop-web.sh** file on the root directory.

## Kubernetes Setup

Kubernetes setup consists of 5 yml files.

- configmap.yml
- deployment.yml
- Issuer.yml
- Ingress.yml
- Ciservice.yml

The Setup can easily be started executing **kubernetes-start.sh** file on the root directory.

Optionally the url to be used for the ingress can be changed by changing the value of the &#39;URL&#39; variable on top of the kubernetes-start.sh file.

### Prerequisites and assumptions:

- The startup script is executed from the controller node of the Kubernetes cluster with kubectl installed in it.
- Make sure a certificate manager that supports let&#39;s encrypt.is installed and set up for Kubernetes on the cluster.
- Make sure envsubst is installed on the system. (apt-get install gettext-base)
- Executing user must have sudo access in order to create the host entry.

### Usage:

- git clone [https://github.com/prashanchandika/axinom-assignment.git](https://github.com/prashanchandika/axinom-assignment.git)
- cd axinom-assignment
- chmod +x kubernetes-\*.sh
- kuberenetes-start.sh

In order to shut down the Kubernetes setup, execute the **kubernete-stop.sh** file on the root directory.
