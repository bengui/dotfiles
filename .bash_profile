export PATH=$PATH:/Users/bmassell/Library/Android/sdk/platform-tools/

#my bash configurations
source ~/dotfiles/.bashrc

#ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#source /usr/local/git/contrib/completion/git-completion.bash
#GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='[\u@mbp \w$(__git_ps1)]\$ '

alias har='python3 /Users/bmassell/my\ scripts/mitmproxy_to_har.py'
