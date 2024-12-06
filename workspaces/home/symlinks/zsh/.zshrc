# ~/.zshrc

[ -f ~/.dotfiles/workspaces/shared/symlinks/zsh/.zshrc-shared ] && source ~/.dotfiles/workspaces/shared/symlinks/zsh/.zshrc-shared

# Add the following to the ~/.bash_profile or ~/.zshrc file:
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
#   source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh

# To enable auto-switching of Rubies specified by .ruby-version files,
# add the following to ~/.bash_profile or ~/.zshrc:
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
#   source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
