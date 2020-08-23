# Terraform Providers

## ArgoCD

[문서 참고](https://argoproj.github.io/argo-cd/getting_started/)

`argo.tf`, `argo_values.yaml` 두 파일 참고</br>

Port Forward로 접근 `localhost:8080`</br>
username: `admin`</br>
password: `<pod name>`</br>

```bash
kubectl port-forward svc/argocd-server -n argocd 8080:443
```

Login Using The CLI

```bash
kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2
```

Kuberentes context 추가

```bash
argocd cluster add minikube
```

Create An Application From a Git Repository</br>
```bash
ARGOCD_DEST_SERVER=`(kubectl config view -o jsonpath='{.clusters[].cluster.server}')`
```

```bash
argocd app create guestbook --repo https://github.com/kty1965/argocd-example-apps.git --path guestbook --dest-server $ARGOCD_DEST_SERVER --dest-namespace default
```
