# What is this?

This is ansible playbook template for an ubuntu based server for hosting a
[ghost](https://ghost.org) instance.

## How do I run this?

You have to use the inventory file to connect to the corresponding hosts

```bash
ansible-playbook ghost.yml -i inventory.yml
```
