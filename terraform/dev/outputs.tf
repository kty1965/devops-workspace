output "k8s-all-ns" {
  value = data.kubernetes_all_namespaces.allns.namespaces
}
