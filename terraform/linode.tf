resource "linode_instance" "harbor_build" {
  image           = var.linode_image
  label           = var.linode_label
  region          = var.linode_region
  type            = var.linode_type
  authorized_keys = ["${var.linode_authorized_keys}"]
  root_pass       = var.linode_root_pass
}

resource "local_file" "linode_ip_address" {
    content  = "TF_VAR_linode_ip=${linode_instance.harbor_build.ip_address}"
    filename = var.linode_ip_address_file
}

