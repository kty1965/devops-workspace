resource "kubernetes_namespace" "argocd" {
  metadata {
    labels = {
      env = var.env
    }

    name = "argocd"
  }
}

resource "helm_release" "argocd" {
  name = "argocd"
  chart = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  version = "2.5.4"

  namespace = kubernetes_namespace.argocd.metadata[0].name

  values = [
    "${file("./argo_values.yaml")}"
  ]
}