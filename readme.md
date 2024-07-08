# IAC for jenniferplusplus.com

These are mostly just notes to myself

## Quickstart
```shell
vagrant up
```

```shell
vagrant dns --install # (first time only)
```

```shell
ansible-playbook playbooks/site.yml --vault-password-file .localkey
```

## Doing other things

```shell
ansible-playbook playbooks/backup.yml --vault-password-file .localkey # take backups
ansible-playbook playbooks/restore.yml --vault-password-file .localkey # restore a backup
ansible-playbook playbooks/update-ghost.yml --vault-password-file .localkey # because it's so slow
# you probably get the idea
```

If what you're trying to test takes too long to get to, or is hard to isolate, just write another playbook for it. Or do something in the debug.yml playbook.

## Apps

- [x] Ghost blog
- [x] Grafana
- [ ] [LinkWarden](https://github.com/linkwarden/linkwarden)
- [ ] [Bookstack](https://www.bookstackapp.com/)
- [ ] [Plausible](https://github.com/plausible/community-edition/)

Check the `legacy` tag if you need something from the original playbooks.