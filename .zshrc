# Fix Hyper first line precent sign
unsetopt PROMPT_SP

# Source configuration files
for file in ~/.{bash_profile,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Source NVM
# https://stackoverflow.com/questions/27651892/homebrew-installs-nvm-but-nvm-cant-be-found-afterwards
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# Source ZSH package manager
source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Load bundels
antigen bundle git
antigen bundle docker docker-compose
antigen bundle nvm
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme
antigen theme bhilburn/powerlevel9k

# Tell antigen that you're done
antigen apply

fortune | ponysay