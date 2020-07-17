# Istio

```bash
brew install istioctl
minikube addons enable metallb
```

> profile마다 설치되는 [리스트](https://istio.io/latest/docs/setup/additional-setup/config-profiles/)

```bash
istioctl profile list
istioctl install --set profile=demo
kubectl label namespace default istio-injection=enabled
```


```bash
echo "http://$(kubectl get nodes -o template --template='{{range.items}}
    {{range.status.addresses}}
        {{if eq .type "InternalIP}}
            {{.address}}
        {{end}}
    {{end}}
{{end}}'):$(kubectl get svc istio-ingressgateway -n istio-system -o jsonpath='{.spec.ports[0].nodePort}')/productpage"
```