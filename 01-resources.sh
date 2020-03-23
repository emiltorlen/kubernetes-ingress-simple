kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.30.0/deploy/static/mandatory.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.30.0/deploy/static/provider/cloud-generic.yaml
kubectl apply -f apple.yaml
kubectl apply -f banana.yaml
kubectl create -f ingress.yaml
kubectl get pods --all-namespaces -l app=ingress-nginx

sudo service kubelet restart
kubectl get --all-namespaces endpoints