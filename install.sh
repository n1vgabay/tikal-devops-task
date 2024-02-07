#!/bin/bash

# # # Enabling ingress
minikube addons enable ingress

# minikube ip (command to get the ip)
# Add <minikube ip> app.example.com to /etc/hosts (use sudo in linux)
# Example host to add in our case; 192.168.49.2 app.example.com

# kubectl delete validatingwebhookconfigurations ingress-nginx-admission
# kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.14.1/cert-manager.yaml

kubectl apply -f ./hello-world-a/hello-world-deployment.yaml
kubectl apply -f ./hello-world-a/hello-world-service.yaml

kubectl apply -f ./hello-world-b/hello-world-deployment.yaml
kubectl apply -f ./hello-world-b/hello-world-service.yaml

# kubectl apply -f ./utils/cert-manager-issuer.yaml 
kubectl apply -f ./utils/ingress-main.yaml