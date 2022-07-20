Manual steps that are still done on every new setup:

1. Run `~/.dotfiles/zero/setup`.
2. Restart once completed (and as-needed for system updates done by the script).
3. Rotate or import SSH keys.
4. Import software licenses.

Then, in no particular order:

- Set host name under System Preferences > Sharing > Computer Name.

- Edit `/etc/pam.d/sudo` and add the following as the first two lines to enable
  [PAM Touch ID](https://github.com/Reflejo/pam-touchID) and [PAM Watch
  ID](https://github.com/biscuitehh/pam-watchid):

```
auth sufficient pam_touchid.so "reason=execute a command as root"
auth sufficient pam_watchid.so "reason=execute a command as root"
```

Some of these are preferably not automated, others weren't possible AFAICT.
