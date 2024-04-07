# Mac, Linux and Windows playbooks

The playbooks in this repository configure most of the software that I use for macOS and Linux for web and software development. This repository is based on [Jeef Geerling](https://github.com/geerlingguy/mac-dev-playbook) of Youtube fame. For the Windows playbooks those are a mix of general computing and gaming.

## Installation for macOS

1. Install Apple's command line tools `xcode-select --install`.
2. [Install Homebrew](https://brew.sh)
3. Install Python via homebrew `brew install python3`
4. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html):
    1. `brew install ansible`
5. Install requirements `ansible-galaxy install -r requirements.yml`
6. Run playbook `ansible-playbook main.yml --ask-become-pass`

## Installation for Windows

1. Ensure you have the latest Powershell and .NET Framework.
2. Install [chocolatey](https://chocolatey.org/install)
3. Install [Ansible](https://docs.ansible.com/ansible/latest/os_guide/windows_faq.html#can-ansible-run-on-windows). You should a local WSL instance to manage the ansible installation
4. Run playbook `ansible-playbook windows.yml`

## Inspired by

- https://github.com/geerlingguy/mac-dev-playbook
- https://github.com/lukasleitsch/macos-playbook
