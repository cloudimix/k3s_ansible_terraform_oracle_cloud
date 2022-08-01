# K3s cluster Instalation tips

Required apps:
- OCI CLI --> https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm
- Terraform --> https://www.terraform.io/downloads
- Ansible --> apt, yum, pip...
- (Algo mas relacionado con ansible pero no me acuerdo. Mañana lo pongo)

Requiered moves:
- Create Oracle Cloud (Free Tier) account
- Create Terraform Cloud account: organization and workspace.
- In provider.tf replace values for "organization" and "name" fields by yours organization and workspace names have created.
- $oci session authenticate
- $terraform login

Installation:
- $make
