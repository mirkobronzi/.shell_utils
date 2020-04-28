# .shell_utils
shell related stuff to install on a new server

# Install
First install oh my zsh - see https://github.com/ohmyzsh/ohmyzsh

Then clone this repository inside your ${HOME} folder:

    cd ${HOME} & git clone git@github.com:mirkobronzi/.shell_utils.git

Then source the source.me file:

    echo "source ${HOME}/.shell_utils/config/source.me" >> ${HOME}/.zshrc
