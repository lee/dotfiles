function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "⚡"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/($(parse_git_dirty)\1)/"
}

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
$PURPLE\u@\h $LIGHT_GREEN\w $LIGHT_CYAN\$(parse_git_branch)\
$YELLOW\$ "
PS2='> '
PS4='+ '
}
proml

export PATH="~/bin:/opt/ruby-enterprise-1.8.7-2009.10/bin:/opt/local/bin:/opt/local/sbin:$PATH"
export EDITOR="mate_wait"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
# export RUBY_HEAP_FREE_MIN=12500

alias wp='cd ~/p/weplay'
alias lsl='ls -l'
alias ebash='mate ~/.bash_profile'
alias rbash='source ~/.bash_profile'

alias sc='script/console'
alias dc='script/dbconsole'

alias cuc='./script/cucumber'
alias cucs='./script/cucumber'
alias sucs='./script/cucumber -p selenium'

#######
# LUKE GIT #
#######
alias gb='git branch -av'
alias gba='git branch -a'
alias gs='git status'
alias g='git status'
alias gst='git status'
alias gca='git commit -v -a'
alias gitrmall='git ls-files --deleted|xargs git rm'
alias gpr='git pull --rebase'
alias gcm='git checkout master'
alias gh='github'
alias ginit='git submodule update --init'
alias gpm='git push origin master'
alias push='git push origin master'
