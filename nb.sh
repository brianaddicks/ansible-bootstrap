#!/bin/bash
ansible-navigator run ./playbooks/nautobot_populate.yml \
  --penv NAUTOBOT_URL \
  --penv NAUTOBOT_TOKEN \
  --eei quay.io/rh_ee_baddicks/nautobot-ee