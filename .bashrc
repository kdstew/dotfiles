eval "$(rbenv init -)"

source ~/.git-completion.bash
source ~/.git-prompt.sh

source ~/my_setup/tmuxinator.bash

export EDITOR=vim

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w\[\033[32m\]$(__git_ps1) \[\033[0m\]> '

# Go Lang setup
export GOPATH=$HOME/apps/go
export PATH=$PATH:$GOPATH/bin

alias dcc='docker-compose'
alias dccr='docker-compose rm -f'
alias dcr='docker-compose run --rm'
alias dcb='docker-compose build --pull'
alias dclean='docker rmi $(docker images -f "dangling=true" -q)'
alias dprune='docker system prune'

export PATH=$PATH:/Users/kevin/apps/nicerest

export ANDROID_HOME=/usr/local/opt/android-sdk

corsify() { heroku config:set AUTH0_COOKIE_DOMAIN=frontend-360-pr-$1.herokuapp.com --app frontend-360-pr-$1; }

alias upload-file='curl -H "Content-Type: application/zip" -v --upload-file '
alias fix-camera='sudo killall VDCAssistant'

export AWS_FUZZ_USER="kstewart"
alias aws-fuzzy-prod="AWS_DEFAULT_PROFILE=prod aws-fuzzy"

# Load NPM_TOKEN
if [ -f ~/.npm.env ]; then
  source ~/.npm.env
fi

alias config='/usr/bin/git --git-dir=/Users/kevin/.cfg/ --work-tree=/Users/kevin'
