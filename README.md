(Most of) My Configuration Files

THIS IS A WORK IN PROGRESS

THIS README IS SLIGHTLY OUTDATED. I WILL UPDATE IT AT SOME POINT IN THE FUTURE.

Currently in use on Arch Linux

These are the dotfiles that I use on my GNU/Linux system. The main focus of these files is to create a functional, secure, fast, extensible and intuitive system. I expect to achieve this by means of free (as in freedom, obviously) software, minimalism, simplicity and Vim-like keybindings, so this is what you can expect to find here. If you didn't guess it by now, (at least some of the programs used and) the dotfiles in this repository are HEAVILY inspired by Luke Smith's "Voidrice" (https://github.com/LukeSmithxyz/voidrice), as I think it follows the kind of workflow "philosophy" that I want to adopt. Have fun if you want to try these files out, but don't expect them to work on your system, despite the fact that I actively use them.

WARNING: These configuration folders include symlinks in order to move some files away from their standard location (e.g. newsboat urls) or need symlinks to work (e.g. librewolf will not use the overrides in .config/my-librewolf by default; it needs a symlink to do that).

Requirements:
a directory in `/var/log/` where the user has read/write acces without root privileges (see rc.lua)

Commands to create a new repository like this from scratch:
```bash
git init --bare $HOME/.configuration
alias config='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'" >> $HOME/.bashrc
```
Installing these dotfiles onto a new system:
```bash
echo ".configuration" >> .gitignore
git clone --bare <git-repo-url> $HOME/.configuration
alias config='/usr/bin/git --git-dir=$HOME/.configuration/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

The technique used to create this repository:
https://www.atlassian.com/git/tutorials/dotfiles
