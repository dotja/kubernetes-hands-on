# Kubernetes hands-on
Hands-on tasks to learn concepts in Kubernetes.

## Part 1: Simple deployment
(Video tutorial found on Youtube)

* start Minikube
```
minikube start
```

* build Docker image locally
```
eval $(minikube -p minikube docker-env)
docker build -t project .
```

* apply YAML templates
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

* Django app URL
```
echo $(minikube ip):$SERVICE_PORT
```
