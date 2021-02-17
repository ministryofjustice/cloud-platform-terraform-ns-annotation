# cloud-platform-terraform-ns-annotation

[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-ns-annotation/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-ns-annotation/releases)


This module update the namespace with annotation that allow iam roles to assume role any of pods in the given namespace.


This example is designed to be used in the [cloud-platform-environments](https://github.com/ministryofjustice/cloud-platform-environments/) repository.

The output will be a annotation added to the given namespace

## Usage

Read the example [README](examples/README.md) file in this repository for Usage
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ns_annotation_roles | List of roles to be added as values for annotation `iam.amazonaws.com/permitted=` | list | - | yes |
| namespace | Namespace for which the annotation has to be set | string | - | yes |
```

## Outputs

The namespace annotation `iam.amazonaws.com/permitted=` has given role names added with `|` seperated. 
