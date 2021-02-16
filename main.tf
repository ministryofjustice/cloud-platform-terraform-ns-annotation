
resource "null_resource" "ns_role_annotation" {
  count = length(var.ns_annotation_roles) > 0 ? 1 : 0
  provisioner "local-exec" {
    command = "kubectl annotate namespace ${var.namespace} 'iam.amazonaws.com/permitted=${join("|", [for role in var.ns_annotation_roles : format("%s", role)])}' --overwrite"
  }
   provisioner "local-exec" {
    when = destroy
    command = "kubectl annotate namespace ${var.namespace} 'iam.amazonaws.com/permitted-'"
  }
}
