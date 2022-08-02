# K3s cluster Installation tips

Required apps:
- OCI CLI --> https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm
- Terraform --> https://www.terraform.io/downloads
- Ansible --> apt, yum, pip...
- (Algo mas relacionado con ansible pero no me acuerdo. Mañana lo pongo)

Required moves:
- Create Oracle Cloud (Free Tier) account
- Create Terraform Cloud account: organization and workspace.
- In provider.tf replace values for "organization" and "name" fields by yours organization and workspace names have created.
- $oci session authenticate<br />
Enter the name of the profile you would like to create: DEFAULT
- $terraform login

Installation:
- $make
