# argocd-autopilot-terraform-modules

## Description

This repo contains some [Terraform](https://www.terraform.io/) modules for installing 
the [ArgoCD Auto Pilot](https://argocd-autopilot.readthedocs.io/en/stable/).

## Usage:


### install-autopilot

This will only download the autopilot binary.

```
module "install_autopilot" {
  source                = "github.com/polinchw/argocd-autopilot-terraform-modules//modules/install-autopilot"
}
```

### bootstrap-autopilot

This will boot strap the cluster with your ArgoCD Autopilot repo.  It is recommended to make
the `cluster_name` variable dependent on an output from your cluster create operation.  This module
will not trigger until the `cluster_name` variable becomes available.

```
module "boostrap" {
  source          = "github.com/polinchw/argocd-autopilot-terraform-modules//modules/bootstrap-autopilot"
  kubeconfig_file = var.kubeconfig_file
  git_token       = var.git_token
  git_repo        = var.git_repo
  cluster_name    = module.cluster.host
}
```

### Sample repo

This [repo](https://github.com/polinchw/terraform/) uses this module.  You can refer to it as an example of recommended usage.