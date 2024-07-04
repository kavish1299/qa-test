#!/bin/bash
#Minikube should already be running
cd Deployment
echo "Applying backend-deployment.yaml"
kubectl apply -f "backend-deployment.yaml"

echo "Applying frontend-deployment.yaml"
kubectl apply -f "frontend-deployment.yaml"

echo "Deployment complete."

#Port Mapping to Access it from local
kubectl port-forward svc/frontend-service 8091:80

#Now we can access the application from url= localhost:8091