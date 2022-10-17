# argocd-autopilot-terraform-modules

## Description

This repo contains some Terraform modules for installing 
the ArgoCD Auto Pilot.

## Usage:


### install_autopilot


```
module "install_autopilot" {
  source                = "github.com/polinchw/argocd-autopilot-terraform-modules//modules/install-autopilot"
}
```