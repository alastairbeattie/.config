export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export WORKON_HOME=~/.envs
export PROJECT_HOME=~/virtual_envs/
source /usr/local/bin/virtualenvwrapper.sh
export DJANGO_COLORS="dark"
export PAGER=/usr/local/bin/vimpager
. ~/.bash_django_completion

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

abe_ps1 () {
	echo $(date)
}
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ "
export HISTIGNORE="&"

#if type brew 2&>/dev/null; then
#  for COMPLETION in $(brew --prefix)/etc/bash_completion.d/*
#  do
#    [[ -f $COMPLETION ]] && source "$COMPLETION"
#  done
#  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]];
#  then
#    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
#  fi
#fi
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
if [ -f $(brew --prefix)/usr/local/etc/bash_completion ]; then
    . $(brew --prefix)/usr/local/etc/bash_completion
fi



# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

