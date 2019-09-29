export PATH=$HOME/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH:$GEM_HOME
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git rails ruby bundler)
source $ZSH/oh-my-zsh.sh

# rbenv settings
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

#elixir exenv settings
export PATH="$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"

# nvm settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

git-cleanup() {
  git fetch --prune && (git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d)
}

###### IMPORTS FOR WORK LAPTOP ######

# set -a
# . "$HOME/.work-stuff.sh"
# set +a
