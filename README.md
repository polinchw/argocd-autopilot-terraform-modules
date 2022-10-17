# argocd-autopilot-terraform-modules

## Description

This repo contains some [Terraform](https://www.terraform.io/) modules for installing 
the [ArgoCD Auto Pilot](https://argocd-autopilot.readthedocs.io/en/stable/).

## Usage:


### install_autopilot

This will only download the autopilot binary.

```
module "install_autopilot" {
  source                = "github.com/polinchw/argocd-autopilot-terraform-modules//modules/install-autopilot"
}
```