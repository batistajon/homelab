(
  echo "--- ALL ---";
  kubectl get all --all-namespaces -o yaml;
  echo "--- CONFIGMAPS ---";
  kubectl get configmap --all-namespaces -o yaml;
  echo "--- INGRESS ---";
  kubectl get ingress --all-namespaces -o yaml;
  echo "--- INGRESSROUTES ---";
  kubectl get ingressroute --all-namespaces -o yaml;
  echo "--- INGRESSCLASSES ---";
  kubectl get ingressclass --all-namespaces -o yaml;
  echo "--- PVC ---";
  kubectl get pvc --all-namespaces -o yaml;
  echo "--- PV ---";
  kubectl get pv --all-namespaces -o yaml;
  echo "--- SERVICEACCOUNTS ---";
  kubectl get serviceaccount --all-namespaces -o yaml;
  echo "--- ENDPOINTS ---";
  kubectl get endpoints --all-namespaces -o yaml;
  echo "--- SECRETS ---";
  kubectl get secrets --all-namespaces -o yaml;
  echo "--- CRDs ---";
  kubectl get crd -o yaml;
  echo "--- TRAEFIK LOGS ---";
  kubectl logs -n traefik deployment/traefik;
) > cluster-full-dump.txt

