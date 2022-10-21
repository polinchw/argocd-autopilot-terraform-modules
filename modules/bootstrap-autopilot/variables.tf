variable "kubeconfig_file" {
  description = "Location of the Kubernetes config file."
}

variable "git_token" {
  description = "Token that has write permissions to the git_repo"
}

variable "git_repo" {
  description = "The git repo that contains your ArgoCD Autopilot repo."
}

variable "cluster_name" {
  description = "The name of the cluster that autopilot will be deployed on. I made this dependent on an output from the cluster create.  This makes it wait for the cluster to be ready."  
}