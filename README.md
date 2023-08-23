# ansible-bootstrap

Bootstrap process for getting Ansible lab configured with the following dependencies. Note that this does not deploy most Nautobot or AAP for the time being.

* Azure Key Vault
* Nautobot Containers
* Ansible Automation Platform

## Repo Setup

This repository has github actions that require the following secrets be set on the repo.

^ Secret Name     ^ Purpose ^
| REDHAT_USERNAME | Used to login to Ansible Automation Hub to download collections for EE builds |
| REDHAT_PASSWORD | Used to login to Ansible Automation Hub to download collections for EE builds |
| QUAY_USERNAME | Used to push EE builds to Quay |
| QUAY_PASSWORD | Used to push EE builds to Quay |
| AH_TOKEN | Used to login to Ansible Automation hub inside EE builds |

## Azure Key Vault

### Create SP for Azure login

1. az login
1. az account subscription list
1. az ad sp create-for-rbac --name ansible --role Contributor --scopes <ID-FROM-PREVIOUS-STEP>
1. Save output for use in azure playbooks

### Run Playbook

1. Export the following environment variables
    * AZURE_CLIENT_ID
    * AZURE_SECRET
    * AZURE_SUBSCRIPTION_ID
    * AZURE_TENANT