# cloud-platform-terraform-ns-annotation

[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-ns-iam-annotation/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-ns-iam-annotation/releases)



## Usage

```hcl
module "ns_iam_annotation" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-ns-iam-annotation?ref=version"
  ns_annotation_roles = ["cloud-platform-ef86eXXXXXb0f46"]
  # for list of roles see below 
  # ns_annotation_roles = ["cloud-platform-shgjfsguwurtyiw","cloud-platform-shgjfsguwurtyiw"]
  namespace = var.namespace
}

```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ns_annotation_roles | List of roles to be added as values for annotation `iam.amazonaws.com/permitted=` | list | - | yes |
| namespace | Namespace for which the annotation has to be set | string | - | yes |

## Outputs

The namespace annotation `iam.amazonaws.com/permitted=` has given role names added with `|` seperated. 
