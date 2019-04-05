
packages = vim bash tmux

.PHONY: all
all: stow

.PHONY: stow
stow:
	@stow -t ~ stow
	@stow -t ~ $(packages)

.PHONY: unstow
unstow:
	@stow -D -t ~ stow $(packages)
