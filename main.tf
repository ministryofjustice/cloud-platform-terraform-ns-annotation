
resource "null_resource" "ns_role_annotation" {
  provisioner "local-exec" {
    command = "kubectl annotate namespace ${var.namespace} 'iam.amazonaws.com/permitted=${join(", ", [for role in var.ns_annotation_roles : format("%s", role)])}' --overwrite"
  }
}
