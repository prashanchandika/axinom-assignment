#!/bin/bash

URL='axinom.assignment'

export URL=${URL}

echo 'checking if envsubst is available...'
if ! command  -v envsubst
then
	echo 'Please install envsubst to proceed!'
       	exit 1
else
	echo 'envsubst is found. Proceeding...'
fi


cd Kubernetes
# For the use with minicube
minikube kubectl -- apply -f configmap.yml 
minikube kubectl -- apply -f deployment.yml
minikube kubectl -- apply -f issuer.yml
minikube kubectl -- apply -f ciservice.yml
#minikube kubectl -- apply -f ingress.yml
envsubst < ingress.yml | minikube kubectl -- apply -f -

# For use in kubeadm clusters
#kubectl apply -f configmap.yml
#kubectl apply -f deployment.yml
#kubectl apply -f issuer.yml
#kubectl apply -f ciservice.yml
#envsubst < ingress.yml | kubectl apply -f -


if [ $? -eq 0  ]
then
	echo 'Creating host entry'
	grep "$(minikube ip) $URL" /etc/hosts || echo "$(minikube ip) $URL" | sudo tee -a /etc/hosts
	if [ $? -eq 0  ]
	then
		echo '*****************************************************'
		echo "*Web Server has started on https://$URL*"
		echo '*****************************************************'
	fi
fi

# To enable access to the web server on localhost when used with Minicube
#minikube service my-service
