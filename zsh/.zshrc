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

# Go-lang paths
export GOPATH="$HOME/projects/go"
export GOBIN="$GOPATH/bin"
export GOROOT=$(go env GOROOT)

# chruby
source "/usr/local/share/chruby/chruby.sh"
source "/usr/local/share/chruby/auto.sh"
export PATH="/usr/local/sbin:$PATH"

# Android SDK
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platorm-tools
