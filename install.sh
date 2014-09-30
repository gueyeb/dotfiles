#!/bin/bash

## 'install.sh' ##

# check OS (ubuntu, mac)

# check install rubygems

# tmuxinator
gem install tmuxinator
## zsh completion
mkdir $HOME/.tmuxinator
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O $HOME/.tmuxinator/tmuxinator.zsh
