#!/bin/bash

# Check for Homebrew
if test ! $(which brew); then
    echo "Installing Homebrew..."
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"
# Path to the ZSH config file
ZSH_CONFIG_FILE="$HOME/.zshrc"
# Check if ZSH_THEME is present
if grep -q "ZSH_THEME" $ZSH_CONFIG_FILE; then
  # ZSH_THEME found, so replace it
  sed -i '/ZSH_THEME/c\ZSH_THEME="powerlevel10k/powerlevel10k"' $ZSH_CONFIG_FILE
else
  # ZSH_THEME not found, so add it
  echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> $ZSH_CONFIG_FILE
fi
 
git clone https://github.com/Dbz/kube-aliases.git ~/.oh-my-zsh/custom/plugins/kube-aliases
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "plugins+=( git zsh-syntax-highlighting zsh-autosuggestions kube-aliases)" >> ~/.zshrc
brew install --cask iterm2
open -a iTerm .
