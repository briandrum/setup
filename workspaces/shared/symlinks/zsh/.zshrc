# ~/.zshrc

# Prompt
# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '['$branch']'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='%2/ $(git_branch_name) 🍔 '

# Add sbin to $PATH for Homebrew
export PATH="/usr/local/sbin:$PATH"

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
