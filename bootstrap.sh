#!/bin/bash
ansible-navigator run ./playbooks/azure_create_keyvault.yml \
  --penv AZURE_CLIENT_ID \
  --penv AZURE_SECRET \
  --penv AZURE_SUBSCRIPTION_ID \
  --penv AZURE_TENANT \
  --penv AZURE_ADD_USER_ID \
  --eei quay.io/rh_ee_baddicks/azure-ee