#!/usr/bin/env sh
# Prepare this team: install the rke2 role and seed known_hosts.
# RKE2 deploy is run separately: ansible-playbook deploy_rke2.yaml -k
set -e
ansible-galaxy install -r requirements.yml
ansible-playbook update_known_hosts.yaml
