# .shell_utils
shell related stuff to install on a new server

# Install

## Clone the project
First, clone this repository inside your ${HOME} folder:

    cd ${HOME} && git clone git@github.com:mirkobronzi/.shell_utils.git
    touch ${HOME}/.local.rc

Then, either install zsh or bash (depending which one you want to use).

## ZSH
Install oh my zsh - see https://github.com/ohmyzsh/ohmyzsh
Once done, source the source.me file:

    echo "source ${HOME}/.shell_utils/config/source.me" >> ${HOME}/.zshrc

## BASH
Install oh my bash - see https://github.com/ohmybash/oh-my-bash
Once done, source the source.me file:

    echo "source ${HOME}/.shell_utils/config/source.me" >> ${HOME}/.bashrc


## Add the remaining links for vim, tmux, ...

Symlink other config files:

    ln -s ${HOME}/.shell_utils/config/.tmux.conf ${HOME}
    ln -s ${HOME}/.shell_utils/config/.vimrc ${HOME}

Add any specific/local configuration commands in ${HOME}/.local.rc
