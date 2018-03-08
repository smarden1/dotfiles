alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias simple_server='python -m SimpleHTTPServer 8000'
alias lint_python='flake8'
export EDITOR="/usr/local/bin/sublime -w"

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"

# bash history
HISTSIZE=2000
HISTFILESIZE=2000

# git history
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias git_branch_clean='git branch | grep --invert master | xargs git branch -d'

# bracketed paste mode
printf "\e[?2004l"
