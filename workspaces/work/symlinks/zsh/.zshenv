# ~/.zshenv

# https://stackoverflow.com/a/63447799
autoload -Uz compinit && compinit

if [ -f ~/Code/aclaimant/Envfile ]
  then source ~/Code/aclaimant/Envfile
fi

_bb_tasks() {
    local matches=(`bb tasks |tail -n +3 |cut -f1 -d ' '`)
    compadd -a matches
    _files # autocomplete filenames as well
}
compdef _bb_tasks bb
