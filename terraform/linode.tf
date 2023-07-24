resource "linode_instance" "harbor_build" {
  image           = var.linode_image
  label           = var.linode_label
  region          = var.linode_region
  type            = var.linode_type
  authorized_keys = var.linode_authorized_keys
  root_pass       = var.linode_root_pass
}

# Path: terraform/outputs.tf
# Compare this snippet from terraform/outputs.tf:
output "ip_address" {
  value = linode_instance.harbor_build.ip_address
}


