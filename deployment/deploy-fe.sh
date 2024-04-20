kubectl delete deployment frontend
kubectl delete services frontend
kubectl delete services frontend-ep

kubectl apply -f udagram-frontend-deployment.yaml --request-timeout=120s
kubectl apply -f udagram-frontend-service.yaml --request-timeout=120s
kubectl expose deployment frontend --type=LoadBalancer --name=frontend-ep 