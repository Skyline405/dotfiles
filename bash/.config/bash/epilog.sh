# TODO check for bin path already included
export PATH="$PATH:/home/$USER/.local/bin"

[ -s "$BASH_DIR/functions.sh" ] && \. "$BASH_DIR/functions.sh"
[ -s "$BASH_DIR/aliases.sh" ] && \. "$BASH_DIR/aliases.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
