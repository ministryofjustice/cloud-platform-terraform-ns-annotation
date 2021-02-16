# cloud-platform-terraform-_template_

_note: Please remove all comments in italics and fill where required>_

_Please change the urls in the release badge below_
[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-ns-iam-annotation/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-ns-iam-annotation/releases)



## Usage

```hcl
module "ns_iam_annotation" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-ns-iam-annotation?ref=version"
  ns_annotation_roles = ["cloud-platform-ef86e877e3cb0f46"]
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
