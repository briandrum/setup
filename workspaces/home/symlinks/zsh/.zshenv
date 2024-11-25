# Add the following to the ~/.bash_profile or ~/.zshrc file:
# source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
# If you want chruby to auto-switch the current version of Ruby
# https://github.com/postmodern/chruby#auto-switching
source $(brew --prefix)/opt/chruby/share/chruby/auto.sh

# To enable auto-switching of Rubies specified by .ruby-version files,
# add the following to ~/.bash_profile or ~/.zshrc:
# source /opt/homebrew/opt/chruby/share/chruby/auto.sh
source $(brew --prefix)/opt/chruby/share/chruby/auto.sh

chruby ruby-3.1.3 # run 'chruby' to see actual version
