# IAC for jenniferplusplus.com

## Notes to myself

* Reminder that ansible just doesn't work on windows. Do this from WSL.

Get requirements

```bash
ansible-galaxy install -r requirements.yml
```

### How to bootstrap

1. Get a new host
2. With a sudoer user
3. Update `prod.inventory.yml`
4. `ssh-copy-id <user>@<host> -i /path/to/ssh/key`
5. Then...

```bash
ansible-playbook site.yml -u <user> -K --key-file /path/to/ssh/key -i prod.inventory.yml -t bootstrap
```

And now you can do things as ansible

### How to do other stuff

1. Be properly bootstrapped. See above.
2. Make sure you have the `.vault_key` file.
3. Then...

```bash
ansible-playbook site.yml --vault-password-file .vault_key
ansible-playbook site.yml --vault-password-file .vault_key -t backup,all
ansible-playbook site.yml --vault-password-file .vault_key -t restore,all
ansible-playbook site.yml --vault-password-file .vault_key --skip-tags never -t web
```

## Todo

1. ~~Backups~~
2. ~~Ghost updates~~
3. Monitoring
3. Run from not my laptop (probs github actions)
4. wiki (probs wiki.js)
5. wiki updates