# TODO check for bin path already included
export PATH="$PATH:/home/$USER/.local/bin"

[ -s "$BASH_DIR/functions.sh" ] && \. "$BASH_DIR/functions.sh"
[ -s "$BASH_DIR/aliases.sh" ] && \. "$BASH_DIR/aliases.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# App yarn global to path
# if command -v yarn > /dev/null; then
#   export PATH="$PATH:$(yarn global bin)"
# elif $YARN_NOT_FOUND_SHOW; then
#   echo "yarn not found"
#   set YARN_NOT_FOUND_SHOW = false
# fi

# Stack autocompletion (for haskell)
if command -v stack > /dev/null 2>&1; then
    eval "$(stack --bash-completion-script stack)"
fi
