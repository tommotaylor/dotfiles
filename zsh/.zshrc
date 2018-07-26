ZSH_DIR="$HOME/.zsh" # Path to my custom ZSH directory

# Config
source "$ZSH_DIR/config.zsh"
source "$ZSH_DIR/functions.zsh"

# Git functions
source "$ZSH_DIR/git.zsh"

# Theme
source "$ZSH_DIR/appearance.zsh"
source "$ZSH_DIR/prompt.zsh"
source "$ZSH_DIR/termsupport.zsh"

# Aliases
source "$ZSH_DIR/aliases.zsh"

# Base paths
export PATH="$HOME/.bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:./bin:$PATH"

# Heroku Toolbelt bin path
export PATH="/usr/local/heroku/bin:$PATH"

# Node Packager Manager bin path
export PATH="/usr/local/share/npm/bin:$PATH"

# chruby
source "/usr/local/share/chruby/chruby.sh"
source "/usr/local/share/chruby/auto.sh"
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
export PATH="/usr/local/sbin:$PATH"

# Android SDK
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platorm-tools
export PATH=/Users/tom/Library/Android/sdk/platform-tools:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
