resource "null_resource" "bootstrap_autopilot" {

  triggers = {
    id = var.cluster_name
  }
  provisioner "local-exec" {
    command     = "./argocd-autopilot-linux-amd64 repo bootstrap --recover" 
    environment = {
      KUBECONFIG = var.kubeconfig_file
      GIT_TOKEN  = var.git_token
      GIT_REPO   = var.git_repo
      CLUSTER_NAME = var.cluster_name
     }
  }
  depends_on = [
    var.cluster_name
  ]
  
}