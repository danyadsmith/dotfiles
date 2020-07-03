################################################################################
#  ENVIRONMENT VARIABLES
################################################################################

PATH=/bin:$PATH
PATH=/sbin:$PATH
PATH=/usr/bin:$PATH
PATH=/usr/sbin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/opt/X11/bin:$PATH
PATH=/usr/local/bin/hg:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/local/git/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/Cellar/nano/2.4.0/bin:$PATH
PATH=$HOME/.node/bin:$PATH
PATH=/usr/bin/compass:$PATH
PATH=~/.npm_packages/bin:$PATH
PATH=$HOME/.rbenv/shims:$PATH
PATH=/usr/local/heroku/bin:$PATH
PATH=$HOME/.node_modules_global/bin:$PATH
PATH=~/npm:$PATH
PATH=~/npm/bin:$PATH
PATH=~/.rbenv/shims:$PATH
PATH=/usr/local/bin/yarn:$PATH
PATH=/usr/local/bin/mosh-server:$PATH
PATH=/Applications/MacVim.app/Contents/bin:$PATH
PATH=~/Development/Configuration/dotfiles/scripts:$PATH

export PATH
export VISUAL='mvim -f'

export DISPLAY=:0

eval "$(rbenv init -)"

################################################################################
#  Z COMMAND INSTALLATION
################################################################################

. `brew --prefix`/etc/profile.d/z.sh

################################################################################
#  ALIASES
################################################################################

# Use Homebrewed Nano
#alias nano='/usr/local/Cellar/nano/2.4.0/bin/nano'

# cd
alias ..='cd ..'
alias home='cd ~'
alias root='cd /'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias personal='cd ~/Documents/Personal\ Documents'
alias downloads=' cd ~/Downloads'
alias web=' cd ~/Sites'
alias archives=' web; cd Archives'
alias playground=' web; cd Playground'
alias projects=' web; cd Projects'
alias lear=' web; cd Projects/Lear'
alias training=' web; cd Training'
alias books=' training; cd Books;'
alias lynda=' web; cd Training/Lynda'
alias oreilly=' web; cd Training/OReilly'
alias pluralsight=' web; cd Training/Pluralsight'
alias ibooks='cd ~/Library/Containers/com.apple.BKAgentService/Data/Documents/iBooks'

# clear scrollback
alias cls="osascript -e 'if application \"iTerm\" is frontmost then tell application \"System Events\" to keystroke \"k\" using command down'"
alias clr="osascript -e 'if application \"iTerm\" is frontmost then tell application \"System Events\" to keystroke \"k\" using command down'"
alias clear="osascript -e 'if application \"iTerm\" is frontmost then tell application \"System Events\" to keystroke \"k\" using command down'"

# ctags
alias ctags="`brew --prefix`/bin/ctags"

# diff
alias diff='colordiff'

# disown
alias d='disown'

# ls
alias la=' ls -la'
alias ll=' ls -lhaT'
alias llt=' ls -lhaTt'
alias ldf=' gls -la --group-directories-first --color'

# history
alias raw-hist='history | cut -c 8-' #Prints history without line numbers
alias clr-hist='rm -r ~/.zsh_history'

# hist-ignore
alias history=' history'
alias pwd=' pwd'
alias exit=' exit'
alias df=' df'

# finder
alias finder-showfiles='defaults write com.apple.finder AppleShowAllFiles "TRUE"; killall Finder'
alias finder-hidefiles='defaults write com.apple.finder AppleShowAllFiles "FALSE"; killall Finder'
alias finder-showpath='defaults write com.apple.finder _FXShowPosixPathInTitle "TRUE"; killall Finder'
alias finder-hidepath='defaults write com.apple.finder _FXShowPosixPathInTitle "FALSE"; killall Finder'
alias finder-open='open .'
alias finder-reveal='open . -R'

# git
alias gs="git status"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias go="git checkout"
alias gr="git reset"
alias glog="git log --graph --pretty=format:'%C(magenta)%h%Creset  %C(yellow)%ad%Creset %C(white) %s %Creset%Cgreen(%cr)%Creset [%C(blue)%an%Creset]' --date=short"
alias ghist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias glatest="git log --oneline -n20"
alias grm="touch README.md"
alias gwatch="watch -n 10 --color git log --oneline --color"

# launchpad
alias launchpad-reset='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
alias launchpad-purge='cd /private/var/folders/6d/3cgcz6b50672jn0ph7_m2xbw0000gn/0/com.apple.dock.launchpad/db; sqlite3 db "delete from apps"; killall Dock'
alias launchpad-deleteapp='cd /private/var/folders/6d/3cgcz6b50672jn0ph7_m2xbw0000gn/0/com.apple.dock.launchpad/db; sqlite3 db "delete from apps where title = 'Skype'"; killall Dock'

#tree
alias t='tree -C -I node_modules --dirsfirst'
alias t1='tree -L 1 -C -I node_modules --dirsfirst'
alias t2='tree -L 2 -C -I node_modules --dirsfirst'
alias t3='tree -L 3 -C -I node_modules --dirsfirst'
alias t4='tree -L 4 -C -I node_modules --dirsfirst'

# emacs
alias emacs='emacs --no-window-system'

# vim
#alias vim=nvim
alias vim.config='vim ~/.config/nvim/init.vim'
alias vimdiff='nvim -d'
export EDITOR=gvim

# visual studio code
alias code='code-insiders'

# Restart Terminal
alias restart-bash='source ~/.bash_profile'
alias restart-zsh='source ~/.zshrc'

# DNS Management
alias dns-flush='sudo discoveryutil mdnsflushcache'
alias dns-disable-prefetch='defaults write com.apple.safari WebKitDNSPrefetchingEnabled -boolean false'
alias dns-enable-prefetch='defaults write com.apple.safari WebKitDNSPrefetchingEnabled -boolean true'

# Print Manual Pages
alias preview-man='xargs -I {} man -t {} | open -fa Preview'

# Change Terminal Welcome Message
alias edit-welcome='sudo nano /etc/motd'

# Save Current Environment Variables
alias check-env='printenv | sort | subl'

# Set File and Folder Permssions
alias chmod-webdir='find . -type d -print0 | xargs -0 chmod 755'
alias chmod-folders-open='find . -type d -print0 | xargs -0 chmod 777'
alias chmod-folders-rwxrr='find . -type d -print0 | xargs -0 chmod 744'
alias chmod-folders-rwxnn='find . -type d -print0 | xargs -0 chmod 700'
alias chmod-files-rwrr='find . -type f -print0 | xargs -0 chmod 644'
alias chmod-files-rwnn='find . -type f -print0 | xargs -0 chmod 600'

alias chown-folders='find . -type d -print0 | xargs -0 chown danyadsmith:admin'
alias chown-files='find . -type f -print0 | xargs -0 chown danyadsmith:admin'

# Lock or Unlock Files or Directories
alias unlock-dirs='find . -type d -print0 | xargs -0 chflags nouchg'
alias unlock-files='find . -type f -print0 | xargs -0 chflags nouchg'
alias lock-dirs='find . -type d -print0 | xargs -0 chflags uchg'
alias lock-files='find . -type f -print0 | xargs -0 chflags uchg'

# Automatically Rename Files Numerically With Zero Index
alias auto-rename-zero='ls -1prt | grep -v "/$" | cat -n | while read n f; do mv -n "${f}" "$(printf "%02d" $n-1).${f#*.}"; done'
alias auto-rename-one='ls -1prt | grep -v "/$" | cat -n | while read n f; do mv -n "${f}" "$(printf "%02d" $n).${f#*.}"; done'

# Apache
alias start-apache='sudo apachectl start'
alias restart-apache='sudo apachectl restart'
alias stop-apache='sudo apachectl stop'
alias apache-alog='tail /var/log/apache2/access_log'
alias apache-elog='tail /var/log/apache2/error_log'

# Browser Testing
alias firefox='open -a Firefox'
alias chrome='open -a "Google Chrome"'
alias opera='open -a Opera'

# Create Web Project Repository Folders
alias make-web-dirs='mkdir _; cd _; mkdir dev; mkdir prd; cd dev; mkdir js; mkdir psd; mkdir sass; cd ../prd; mkdir css; mkdir img; mkdir js; .. ; .. ;'

# Hack Reactor
alias make-sprint-dirs='mkdir 00-materials; mkdir 01-coding-and-pair-work; mkdir 02-checkpoints; mkdir 03-notes-and-resources'
alias pomander='curl -s https://raw.githubusercontent.com/reactorcore/pomander/master/bin/install | bash'
alias babelize='babel . --out-dir compiled --presets=es2015,react --ignore=node_modules,compiled --source-maps inline'
alias pbcpwd='pbcopy < pwd'

# Desktop Background
alias refresh-desktop="osascript ~/Development/Scripts/setDesktopBackground.scpt"

# Empty Trash
alias empty-trash='sudo rm -rf ~/.Trash'

# GREP
alias grep='grep --color=auto'

# MongoDB
alias start-mongo='mongod --fork --logpath ~/logs/mongo/mongodb.log --logappend'

# Multimarkdown
alias mmd-batch='find . -name "*.mmd" -print0 | xargs -0 -n1 -I {} multimarkdown --batch {} > {}.html'
alias mmd-compile='find . -name "*.mmd" -print0 | xargs -0 -n1 -I {} multimarkdown {} > mmdCompiledDocument.html'

# MySQL
alias start-mysql='sudo mysql.server start'
alias restart-mysql='sudo mysql.server restart'
alias stop-mysql='sudo mysql.server stop'

# npm
alias npm-lg=' npm list -g --depth=0'

# node_modules

alias find-nm='find . -name "node_modules" -type d'
alias trash-nm='find . -name "node_modules" -type d -prune -exec rm -rf "{}" +'

# Postgres
alias start-postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop-postgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Power Controls
alias mac-shutdown='sudo shutdown -h now'
alias mac-restart='sudo shutdown -r now'
alias mac-sleep='sudo shutdown -s now'

# Ruby
alias irb='irb --simple-prompt'
alias gems-dir=' cd ~/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems'
alias rb-rh='rbenv rehash'

# Users and Groups
alias list-users='dscl . list /users'
alias list-groups='dscl . list /groups'

# Volume Controls
alias mute="osascript -e 'set volume output muted true'"
alias unmute="osascript -e 'set volume output muted false'"
