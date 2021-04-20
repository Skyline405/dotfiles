# App yarn global to path
if command -v yarn > /dev/null; then
  export PATH="$PATH:$(yarn global bin)"
fi

[ -s "$BASH_DIR/functions.sh" ] && \. "$BASH_DIR/functions.sh"
[ -s "$BASH_DIR/aliases.sh" ] && \. "$BASH_DIR/aliases.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
