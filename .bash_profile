function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local  LIGHT_CYAN="\[\033[1;36m\]"
  local      YELLOW="\[\033[1;33m\]"
  local      PURPLE="\[\033[0;35m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$PURPLE\u@\h $LIGHT_GREEN\w \
$YELLOW\$ "
PS2='> '
PS4='+ '
}
proml

export PATH="~/bin:$PATH"
export EDITOR="mate_wait"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
# export RUBY_HEAP_FREE_MIN=12500

alias mi='cd ~/p/movableink'
alias oj='cd ~/p/ojos'
alias ebash='mate ~/.bash_profile'
alias rbash='source ~/.bash_profile'

#######
# LUKE GIT #
#######
alias gb='git branch -av'
alias gba='git branch -a'
alias gs='git status'
alias gca='git commit -av'
alias gitrmall='git ls-files --deleted|xargs git rm'
alias gpr='git pull --rebase'
alias gcm='git checkout master'
alias ginit='git submodule update --init'
alias gpm='git push origin master'

 # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
