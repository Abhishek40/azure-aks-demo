## Introduction
- Understand basic Terraform Commands
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply
5. terraform destroy 

## Terraform installation on Azure CloudShell Bash
```t
curl -O https://releases.hashicorp.com/terraform/1.5.5/terraform_1.5.5_linux_amd64.zip
unzip terraform_1.5.5_linux_amd64.zip
mkdir bin
mv terraform bin/
```
## Verify AZ subscription
```t
az account show
```
## Generate SSH keys
```t
ssh-keygen \
    -m PEM \
    -t rsa \
    -b 4096 \
    -C "abhishekpal5413@myserver" \
    -f terraform-azure.pem
```