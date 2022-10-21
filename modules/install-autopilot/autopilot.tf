resource "null_resource" "install_autopilot" {
  provisioner "local-exec" {
    command     = ".terraform/modules/install_autopilot/modules/install-autopilot/install_autopilot.sh"
    interpreter = ["/bin/bash", "-c"]
  }
}