variable "kubeconfig_file" {
  description = "Location of the Kubernetes config file."
}

variable "git_token" {
  description = "Token that has write permissions to the git_repo"
}

variable "git_repo" {
  description = "The git repo that contains your ArgoCD Autopilot repo."
}