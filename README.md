# Dotfiles

These dotfiles contain configuration and installation for:

* XCode
* Homebrew
* ITerm2
* ZSH
* Dotfiles
* VIM (and MacVIM)
* chruby and ruby-install
* Hammerspoon
* Misc. Utilities

**This setup is intended for Mac OSX >= 10.9**

## Installation

Here is a step-by-step installation.

### XCode

Install XCode through the Mac App Store.

Then run:

```sh
xcode-select --install
```

### Dotfiles installation

Next, clone this Git repository to your $HOME directory and initialize/update
the submodules and finally hook everything up by running the `install` script.

```sh
mkdir $HOME/code
cd dotfiles
git clone git://github.com/tommotaylor/dotfiles.git
./install
```


### Homebrew

Next, install [Homebrew](http://mxcl.github.com/homebrew/) using the following
command.

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

After installing Homebrew, run the following.

```sh
brew update
brew tap Homebrew/bundle
brew bundle --file=Brewfile
```

### Oh My ZSH
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### iTerm2

- Set up `Load preferences from a custom folder or URL:`
  in the `General` section of `Preferences`.
- Select the directory `$DOTFILES/iterm2/`.
- Run `defaults read com.googlecode.iterm2`.
- Restart iTerm.

### vim

Use [vim-plug](https://github.com/junegunn/vim-plug/) to install vim plugins.

```sh
vim +:PlugInstall
```

### chruby and ruby-install

```sh
ruby-install ruby [VERSION] ~/.rubies/ruby-[VERSION]
```
