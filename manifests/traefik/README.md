#steps

```
kubectl create namespace traefik
```

```
helm repo add traefik https://traefik.github.io/charts
helm repo update
```

```
helm install traefik traefik/traefik --namespace=traefik \
  --set dashboard.enabled=true \
  --set service.type=LoadBalancer
```
