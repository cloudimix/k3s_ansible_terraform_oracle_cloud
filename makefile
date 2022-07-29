#!/bin/bash

Infrastructure-setup:
	ansible-playbook id_rsa_generating.yml
	terraform init
	terraform apply -auto-approve
	if [ ! -f ~/.vault_pass ]; then echo testpass > ~/.vault_pass; fi
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i dynamic_inventory.py --vault-password-file ~/.vault_pass play_k3s.yml -e "ansible_ssh_extra_args='-o StrictHostKeyChecking=no'"
