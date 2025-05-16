Manual steps that are still done on every new setup:

1. Run `~/.dotfiles/zero/setup`.
2. Restart once completed (and as-needed for system updates done by the script).
3. Rotate or import SSH keys.
4. Import software licenses.

Then, in no particular order:

- Set host name under System Preferences > Sharing > Computer Name.

- [Enable TouchID][1] for `sudo`:
  - Open the Terminal app. Navigate to the directory that stores the authentication files by typing the following:\
  `cd /etc/pam.d`
  - Next, copy Apple’s provided template to the actual file that the system will read. You’ll need to use sudo and enter your administrator password to get permission:\
  `sudo cp sudo_local.template sudo_local`
  - Finally, open up the file you just made using your text editor of choice; I prefer pico. You’ll need to use sudo again here.\
  `sudo pico sudo_local`
  - In that file, navigate to the line that contains with `pam_tid.so` and delete the hashtag (`#`) at the beginning. Save the file out by pressing Control-X, typing ‘Y’ to save your changes, and hitting Return.

Some of these are preferably not automated, others weren't possible AFAICT.

[1]:<https://sixcolors.com/post/2023/08/in-macos-sonoma-touch-id-for-sudo-can-survive-updates/>
