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
