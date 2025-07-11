# bash history
HISTSIZE=2000
HISTFILESIZE=2000

# git history
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
alias git_branch_clean='git branch | grep --invert master | xargs git branch -d'
alias git_recent='git for-each-ref --sort=-committerdate refs/heads/ | head -5 | cut -f2 | cut -f3 -d/'

# bracketed paste mode
printf "\e[?2004l"

export EDITOR="/usr/local/bin/sublime -w"
export git_editor="code --wait"

# unshare history per tab
unsetopt share_history
eval "$(pyenv init -)"

export git_editor="code --wait"
