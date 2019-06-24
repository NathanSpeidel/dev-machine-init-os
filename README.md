
# Dev Machine Init

This repo contains all the stuff required to setup a new dev machine the way I want it.
It is a SUBSET of the original repo which had some internal yahoo stuff in it as well.

## To setup dev machine:

* __Go to the directory you want to use and clone this repo:__
```
cd somewhere
git clone git@git.ouroath.com:nspeidel/dev-machine-init.git
export REPO="`pwd`/dev-machine-init"
```
* __Get ssh stuff:__
  * `cp ${REPO}/ssh-stuff/saveagent ~/.ssh/`
  * These keys themselves must be copied from your laptop (because we can't check the private key in to this repo)
  * __RUN THESE COMMANDS FROM LAPTOP:__
  ```
    DEVBOX="ENTER_DEVBOX_HOSTNAME_HERE"
    scp ~/.ssh/id_dsa ${DEVBOX}:.ssh/
    scp ~/.ssh/id_dsa.pub ${DEVBOX}:.ssh/
  ```
* __Get git completion script:__
```
mkdir -p ~/scripts/
cp ${REPO}/scripts/git-completion.sh ~/scripts/
```
* __Get bashrc:__
```
cp ~/.bashrc /tmp/
cat ${REPO}/bashrc >> ~/.bashrc
source ~/.bashrc
```
* __Get vim stuff:__
```
cd ${REPO}/vim-stuff/
mv vimrc ~/.vimrc
tar -xvf vim.tgz 
mv .vim/ ~/
```
* __Install tmux:__
  * Figure out how to do this (we used to use yinst)
* __Install tmux Config and Environment Info__
```
cd ${REPO}/tmux-stuff/
mv tmux.conf ~/.tmux.conf
tar -xvf tmux.tgz 
mv .tmux/ ~/
```
...Note: More info available in [tmux plugins repo](https://github.com/tmux-plugins/tpm) and [tmux-resurrect repo(https://github.com/tmux-plugins/tmux-resurrect).
* __Restore Tmux Environment (optional)__
  * Start a tmux session: `tmux`
  * Then do ctrl-a  ctrl-r

