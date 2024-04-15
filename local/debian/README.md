# Debian setup

These playbooks contain an approximation, as there are some specific apps that don't exist on Linux; of the macOS
development setup that I use for daily work. This is compatible with [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)

## Initial steps on a new system

1. Install `ansible`, `python3` and `build-essentials`.
2. Install requirements in case the community plugins change
    1. `ansible-galaxy install -r requirements.yml`
3. Run the playbook.

```bash
ansible-playbook --ask-vault-pass debian.yml --ask-become-pass
```

### After the playbooks have ran

- Install the following things that can't be installed via apt
  - [Rust](https://www.rust-lang.org/)
  - [Tailscale](https://tailscale.com/)*
  - [Brave Browser](https://brave.com/)
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [1password](https://1password.com/)*
  - [Obsidian](https://obsidian.md/)*
  - [Powerlevel10k theme for oh-my-zsh](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)

### Preferences for a desktop environment

- Gnome

*It should only be installed on non-WSL/virtualized environments.
