# What is this?

This is ansible playbook template for an ubuntu based server for hosting a
[ghost](https://ghost.org) instance.

## How do I run this?

**Note:** ensure you have created a non-root user that belongs to the `sudo` group

```bash
adduser trace
usermod -aG sudo trace
su - trace
```

You can `rsync` the SSH config between users to ensure the correct permissions have been applied to the SSH config file, e.g.

```bash
rsync --archive --chown=<user>:<user> ~/.ssh /home/<user>
```

You have to use the inventory file to connect to the corresponding hosts

```bash
ansible-playbook --ask-vault-pass ghost.yml -i inventory.yml
```

## What to do after?

Run the Ghost CLI and answer all of the questions based on this [documentation](https://ghost.org/docs/install/ubuntu/)

Before that ensure that you're in the correct directory e.g. `cd /var/www/devcafemx`
