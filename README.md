# cloud-platform-terraform-ns-annotation

[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-ns-annotation/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-ns-annotation/releases)


This module update the namespace with annotation that allow iam roles to assume role any of pods in the given namespace.


This example is designed to be used in the [cloud-platform-environments](https://github.com/ministryofjustice/cloud-platform-environments/) repository.

The output will be a annotation added to the given namespace

## Usage


In your namespace's path in the [cloud-platform-environments](https://github.com/ministryofjustice/cloud-platform-environments/) repository and inside the directory `resources`, add `nsannotation.tf` and change the role names to appropriate values. 

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
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ns_annotation_roles | List of roles to be added as values for annotation `iam.amazonaws.com/permitted=` | list | - | yes |
| namespace | Namespace for which the annotation has to be set | string | - | yes |

## Outputs

The namespace annotation `iam.amazonaws.com/permitted=` has given role names added with `|` seperated. 
