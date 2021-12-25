cd Kubernetes
# For the use with minicube
minikube kubectl -- delete -f configmap.yml 
minikube kubectl -- delete -f deployment.yml
minikube kubectl -- delete -f issuer.yml
minikube kubectl -- delete -f ciservice.yml
#minikube kubectl -- delete -f ingress.yml
envsubst < ingress.yml | minikube kubectl -- delete -f -

# For use in kubeadm clusters
#kubectl delete -f configmap.yml
#kubectl delete -f deployment.yml
#kubectl delete -f issuer.yml
#kubectl delete -f ciservice.yml
#envsubst < ingress.yml | kubectl delete -f -
