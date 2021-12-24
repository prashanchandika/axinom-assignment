#!/bin/bash

cd Kubernetes
# For the use with minicube
minikube kubectl -- apply -f configmap.yml 
minikube kubectl -- apply -f deployment.yml

# For use in kubeadm clusters
#kubectl apply -f configmap.yml
#kubectl apply -f deployment.yml

if [ $? -eq 0  ]
then
	echo 'Web Server is started on port 30008'
fi

# To enable access to the web server on localhost when used with Minicube
minikube service my-service
