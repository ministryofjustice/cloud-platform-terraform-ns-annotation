module "ns_annotation" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-ns-annotation?ref=version"
  ns_annotation_roles = ["cloud-platform-ef86eXXXXXb0f46"]
  # for multiple roles add the role names as a list seprated by ","
  #   ns_annotation_roles = ["cloud-platform-shgjfsguwurtyiw","cloud-platform-shgjfsguwurtyiw"]
  namespace = var.namespace
}