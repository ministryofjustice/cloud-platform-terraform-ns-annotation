# Example AWS Namespace annotation configuration

In your namespace's path in the [cloud-platform-environments](https://github.com/ministryofjustice/cloud-platform-environments/) repository and inside the directory `resources`, add [nsannotation.tf](https://github.com/ministryofjustice/cloud-platform-terraform-ns-annotation/blob/main/examples/nsannotation.tf) and change the role names to appropriate values. 

```hcl
module "ns_annotation" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-ns-annotation?ref=version"
  ns_annotation_roles = ["cloud-platform-ef86eXXXXXb0f46"]
  # for multiple roles add the role names as a list seprated by ","
  #   ns_annotation_roles = ["cloud-platform-shgjfsguwurtyiw","cloud-platform-shgjfsguwurtyiw"]
  namespace = var.namespace
}
```

Commit your changes to a branch and raise a pull request. Once approved, you can merge and the changes will be applied. Shortly after, you should be able to assume role using the IAM role from any of the pods in your namespace.

```