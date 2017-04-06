#!/bin/sh

echo Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo Brew bundle
brew bundle

echo Oh-my-zsh configuration
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
# Link configuration to my configuration
ln -s `pwd`/zshrc ~/.zshrc
ln -s `pwd`/themes/agnoster.zsh-theme  ~/.oh-my-zsh/themes/agnoster.zsh-theme

echo Force links
brew link --force git
