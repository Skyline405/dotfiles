### Setup

Include prolog and epilog at the top and the end of your `.bashrc`

```sh
# top
export BASH_DIR="$HOME/.config/bash"
[ -s "$BASH_DIR/prolog.sh" ] && \. "$BASH_DIR/prolog.sh"

# bottom
[ -s "$BASH_DIR/epilog.sh" ] && \. "$BASH_DIR/epilog.sh"
```
