# Kubernetes hands-on
Hands-on tasks to learn concepts in Kubernetes. A video version of each part is found on Youtube.

## Part 1: Simple deployment

Part 1 uses a simple Django app with hardcoded variables in settings.py.

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

## Part 2: Environment variables and secrets

* start Minikube
```
minikube start
```

* update `settings.py` to read environment variables

* build Docker image locally
```
eval $(minikube -p minikube docker-env)
docker build -t project .
```

* create base64 secret
```
echo -n 'paste-django-secret-key-here' | base64 -w 0
```

* apply YAML templates
```
kubectl apply -f configmap.yaml
kubectl get configmap
kubectl describe configmap django-config

kubectl apply -f secrets.yaml
kubectl get secret
kubectl describe secret django-secret

kubectl apply -f deployment.yaml
kubectl apply -f ../../part_1/deploy/service.yaml
```

* Django app URL
```
echo $(minikube ip):$SERVICE_PORT
```
