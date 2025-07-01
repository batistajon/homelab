#!/bin/bash

helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm repo update

helm upgrade kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard \
  --install \
  --create-namespace \
  --namespace kubernetes-dashboard \
  -f values.yaml
