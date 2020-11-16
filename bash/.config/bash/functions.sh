####################################################################################################
# Functions
####################################################################################################

if [ -x /usr/bin/tput ] && tput setaf 1 >& /dev/null; then
	C_RED='\[\033[01;31m\]'
	C_GREEN='\[\033[01;32m\]'
	C_BLUE='\[\033[01;34m\]'
	C_YELLOW='\[\033[01;33m\]'
	C_WHITE='\[\033[00m\]'
	C_PURPLE='\[\033[01;35m\]'
fi

# git_branch() {
	# git branch 2> /dev/null | sed -e '/^[^*]/d' | sed -e 's/\*\s\(.*\)$/\1/' | sed -e 's/(\(HEAD\)\s.*\s\(.*\))/\1 -> \2/' | sed -e 's/.*/ \0/'
# }

# git_check_index() {
	# local c=$1
	# if git log >& /dev/null; then
		# local index=$(git status --short | grep -E '^M' | wc --lines)
		# local noindex=$(git status --short | grep -E '^\sM' | wc --lines)
		# local untracked=$(git status --short | grep -E '^\?\?' | wc --lines)
		# echo "$c($C_GREEN${index}$c|$C_RED${noindex}$c|$C_RED${untracked}$c) "
	# fi
# }

_GIT_PS1="\$(__git_ps1 ' %s') "

# PS1='${debian_chroot:+($debian_chroot)}'
PS1="${C_GREEN}\u"
PS1+="@\h "
PS1+="${C_BLUE}\w"
PS1+="${C_PURPLE}${_GIT_PS1}"
PS1+="${C_WHITE}\$ "

export PS1

