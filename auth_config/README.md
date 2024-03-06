# Instructions

These files are encrypted with [ansible-vault](https://docs.ansible.com/ansible/latest/cli/ansible-vault.html)

The encryption key is inside 1Password

## Git Config files

There are 2 .gitconfig files, one that has the main email and the other that has the Vtuber config

### Main account

The file name is `.gitconfig`

This lives under `$HOME/.gitconfig`

### VTuber

The file name is `.gitconfig_vtuber`

This has been historically inside `$HOME/Projects/Devcafe/.gitconfig`

## SSH Keys

These live in the 1Password Vault

### 1Password SSH agent config file

Place this under `~/.config/1Password/ssh/agent.toml` if that doesn't work see the following for [documentation](https://developer.1password.com/docs/ssh/agent/config/#about-the-ssh-agent-config-file)

## RClone

The [RClone](https://rclone.org/install/) configuration contains the keys to Dropbox and my personal NAS. The same password that unlocks the Git config files is also used to decrypt this as it is part of the same vault.
