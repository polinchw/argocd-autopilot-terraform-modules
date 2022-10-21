resource "null_resource" "install_autopilot" {
  provisioner "local-exec" {
    command     = "./modules/install-autopilot/install_autopilot.sh"
    interpreter = ["/bin/bash", "-c"]
  }
}