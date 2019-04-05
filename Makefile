.PHONY: all
all: stow

.PHONY: stow
stow:
	@stow -t ~ stow
	@stow -t ~ vim

.PHONY: unstow
unstow:
	@stow -D -t ~ stow
	@stow -D -t ~ vim
