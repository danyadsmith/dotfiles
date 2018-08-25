################################################################################
#  GIT CUSTOMIZATIONS
################################################################################

#Enable Git Auto-Completion
if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

#Customize Git Prompt
if [ -f ~/.git-prompt.sh ]; then
	source ~/.git-prompt.sh
	export GIT_PS1_SHOWDIRTYSTATE=true
	export GIT_PS1_SHOWUNTRACKEDFILES=true
fi


################################################################################
#  BASH COLORS
################################################################################

# Run this command upon bash login or restart
# export PROMPT_COMMAND=''

# Set Bash Colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxagadabBbacad
export GREP_COLOR='1;32;49'

################################################################################
#  BASH PROMPT
################################################################################

#DEFAULT BASH PROMPT
#PS1='\h:\W \u\$ '

#My Default Prompt with Git Customization
#PS1='\n\n\#. \W$(__git_ps1 "(%s)"): '										                

#My Default Prompt Colorized
#UNCOMMENT A LINE TO SET PROMPT COLOR:

#PS1='\[\033[0;30m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0;30m\])"):\[\033[0m\] '	#Black
#PS1='\[\033[0;31m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0;31m\])"):\[\033[0m\] '	#Red
#PS1='\[\033[0;32m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0;32m\])"):\[\033[0m\] '	#Green
#PS1='\[\033[0;33m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0;33m\])"):\[\033[0m\] '	#Yellow
#PS1='\[\033[0;34m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0;34m\])"):\[\033[0m\] '	#Blue
#PS1='\[\033[0;35m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0;35m\])"):\[\033[0m\] '	#Magenta
#PS1='\[\033[0;36m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0;36m\])"):\[\033[0m\] '	#Cyan
 PS1='\[\033[1;37m\]\n\n\#. \W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[1;37m\])"):\[\033[0m\] '	#BoldWhite

export PS1

################################################################################
#  HISTORY CUSTOMIZATIONS
################################################################################

 export HISTCONTROL=ignoreboth			# ignoredups:ignorespace
 export HISTIGNORE='history:pwd:exit:df:ls:ls -la:ls -lah:ls -lahG:ll:la:lynda:home:root:web:..:cd:cd ..'
 export HISTSIZE=500
#export HISTTIMEFORMAT='%b %d %I:%M %p '
