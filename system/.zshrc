# 
#                                   '||                  
#                                    ||                  
#                        '''/ (''''  ||''|, '||''| .|'', 
#                         //   `'')  ||  ||  ||    ||    
#                     .. /... `...' .||  || .||.   `|..' 
#
#                     z shell configuration file (.zshrc)
#
################################################################################
#
# Path to your oh-my-zsh installation.
export ZSH=/Users/danyadsmith/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="danya"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(
  npm 
  git 
  osx 
  brew 
  colorize 
  compleat 
  history 
  extract 
  fzf-tab
  zsh-syntax-highlighting 
  z
)


# User configuration

setopt histignorespace
setopt NO_CASE_GLOB
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt CORRECT
setopt CORRECT_ALL

precmd() { print "" }

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


################################################################################
#  LOAD ALIASES AND CUSTOMIZATIONS FROM ~/.profile and ~/.zsh_profile
################################################################################
if [ -f ~/.profile ]; then
	source ~/.profile
fi

if [ -f ~/.zsh_profile ]; then
	source ~/.zsh_profile
fi


################################################################################
#  LOAD SECRETS FROM ~/.secrets
################################################################################
if [ -f ~/.secrets ]; then
	source ~/.secrets
fi


################################################################################
#  COLORS
################################################################################

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxagadabBbacad
export GREP_COLOR='1;32;49'
export TERM=xterm-256color

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit


################################################################################
#  HISTORY CUSTOMIZATIONS
################################################################################

export HISTCONTROL=ignoreboth			# ignoredups:ignorespace
export HISTSIZE=500


################################################################################
#  FZF CUSTOMIZATIONS
################################################################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


################################################################################
#  THEME CUSTOMIZATIONS
################################################################################

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten

