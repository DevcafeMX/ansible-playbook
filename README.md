# Mac and Linux Development playbooks

The playbooks in this repository configure most of the software that I use for macOS and Linux for web and software development. This repository is based on [Jeef Geerling](https://github.com/geerlingguy/mac-dev-playbook) of Youtube fame.

## Installation for macOS

1. Install Apple's command line tools `xcode-select --install`.
2. [Install Homebrew](https://brew.sh)
3. Install Python via homebrew `brew install python3`
4. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html):
    1. `brew install ansible`
5. Install requirements `ansible-galaxy install -r requirements.yml`
6. Run playbook `ansible-playbook main.yml --ask-become-pass`

## Inspired by

- https://github.com/geerlingguy/mac-dev-playbook
- https://github.com/lukasleitsch/macos-playbook
