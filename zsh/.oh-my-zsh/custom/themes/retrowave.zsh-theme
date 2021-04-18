# Prompt format:
# ┌─[hostname]─[git]─[pwd]───────────[time]
# └─[user]-$
#

# function theme_precmd {}

setprompt() {

	setopt prompt_subst

	autoload zsh/terminfo

	for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE GREY; do
		eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
		eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
		(( count = $count + 1 ))
	done

	PR_MAIN_FG="$PR_RED"
	PR_NO_COLOR="%{$terminfo[sgr0]%}"

	if [[ $(locale charmap) == "UTF-8" ]]; then
		PR_SET_CHARSET=""
		PR_SHIFT_IN=""
		PR_SHIFT_OUT=""
		PR_HBAR="─"
		PR_ULCORNER="┌"
		PR_LLCORNER="└"
		PR_LRCORNER="┘"
		PR_URCORNER="┐"
	else
		typeset -A altchar
		set -A altchar ${(s..)terminfo[acsc]}
		PR_SET_CHARSET="%{$terminfo[enacs]%}"
		PR_SHIFT_IN="%{$terminfo[smacs]%}"
		PR_SHIFT_OUT="%{$terminfo[rmacs]%}"
		PR_HBAR='$PR_SHIFT_IN${altchar[q]:--}$PR_SHIFT_OUT'
		PR_ULCORNER='$PR_SHIFT_IN${altchar[l]:--}$PR_SHIFT_OUT'
		PR_LLCORNER='$PR_SHIFT_IN${altchar[m]:--}$PR_SHIFT_OUT'
		PR_LRCORNER='$PR_SHIFT_IN${altchar[j]:--}$PR_SHIFT_OUT'
		PR_URCORNER='$PR_SHIFT_IN${altchar[k]:--}$PR_SHIFT_OUT'
	fi

	ZSH_THEME_GIT_PROMPT_PREFIX="${PR_HBAR}[${PR_MAGENTA}"
	ZSH_THEME_GIT_PROMPT_SUFFIX="${PR_MAIN_FG}]"
	ZSH_THEME_GIT_PROMPT_DIRTY=""
	ZSH_THEME_GIT_PROMPT_CLEAN=""

	# ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
	# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
	# ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
	# ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
	# ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
	# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"


	PROMPT='${PR_SET_CHARSET}\
${PR_MAIN_FG}${PR_ULCORNER}${PR_HBAR}[\
${PR_GREEN}%n${PR_YELLOW}@${PR_BLUE}%m\
${PR_MAIN_FG}]${PR_HBAR}[\
${PR_BLUE}%~\
${PR_MAIN_FG}]\
`git_prompt_info``git_prompt_status`\

${PR_LLCORNER}${PR_HBAR}[\
${PR_LIGHT_YELLOW}\$\
${PR_MAIN_FG}]\
%{$reset_color%} '

	# RPROMPT='${PR_LIGHT_YELLOW}[%D{%H:%M:%S}]{$reset_color%}'

	# PS2="$PR_HBAR"

}

setprompt

# autoload -U add-zsh-hook
# add-zsh-hook precmd  theme_precmd
# add-zsh-hook preexec theme_preexec
