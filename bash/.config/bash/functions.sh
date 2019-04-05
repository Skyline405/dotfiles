####################################################################################################
# Functions
####################################################################################################

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	C_RED='\[\033[1;31m\]'
	C_GREEN='\[\033[1;32m\]'
	C_BLUE='\[\033[01;34m\]'
	C_YELLOW='\[\033[1;33m\]'
	C_WHITE='\[\033[00m\]'
	C_PURPLE='\[\033[01;35m\]'
fi

git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' | sed -e 's/\*\s\(.*\)$/\1/' | sed -e 's/(\(HEAD\)\s.*\s\(.*\))/\1 -> \2/' | sed -e 's/.*/ \0/'
}

PS1="${C_GREEN}\u"
PS1+="@\h "
PS1+="${C_BLUE}\w"
PS1+="${C_PURPLE}\$(git_branch) "
PS1+="${C_WHITE}\$ ${C_WHITE}"

export PS1

# Work
# TODO: rewrite this
edit-ds-conf() {
	filename="/etc/nginx/sites-available/webdispatch.conf"
	md5f1=$(md5sum "$filename" | cut -d' ' -f1)
	sudo gedit "$filename"

	md5f2=$(md5sum "$filename" | cut -d' ' -f1)

	if [ "$md5f1" != "$md5f2" ]; then
		echo -e "\nDispatch RPC has been changed!\n"
		echo -e "${C_YELLOW}Waiting for nginx restart...${C_WHITE}"
		if sudo service nginx restart ; then
			echo -e "${C_GREEN}Nginx restarted success!${C_WHITE}\n"
		else
			echo -e "${C_RED}Cannot restart${C_WHITE}Nginx ${C_RED}service${C_WHITE}"
		fi
	fi

}
