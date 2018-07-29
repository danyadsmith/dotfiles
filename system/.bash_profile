###############################################################################
#  LOAD ALL CUSTOMIZATIONS FROM ~/.profile AND ~/.bashrc                      #
###############################################################################
if [ -f ~/.profile ]; then
	source ~/.profile
fi

if [ -f ~/.secrets ]; then
	source ~/.secrets
fi

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
