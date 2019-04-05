.PHONY: all
all: stow

.PHONY: stow
stow:
	@stow -t ~ stow
	@stow *
