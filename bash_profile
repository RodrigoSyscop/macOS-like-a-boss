#-----------------------------------
#  Colorfull Terminal
#-----------------------------------
#
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '


#-----------------------------------
#  PATH
#-----------------------------------
#
export PATH="$PATH:$HOME/.composer/vendor/bin"


#-----------------------------------
#  Bash Completion
#-----------------------------------
#
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi


#-----------------------------------
#  SSH AGENT WORKAROUND
#-----------------------------------
#
ssh-add -l &> /dev/null || ssh-add -k ~/.ssh/id_rsa
