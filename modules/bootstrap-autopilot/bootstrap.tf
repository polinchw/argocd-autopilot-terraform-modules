resource "null_resource" "bootstrap_autopilot" {
  provisioner "local-exec" {
    command     = "./argocd-autopilot-linux-amd64 repo bootstrap --recover" 
    environment = {
      KUBECONFIG = var.kubeconfig_file
      GIT_TOKEN  = var.git_token
      GIT_REPO   = var.git_repo
     }
  }
  
}