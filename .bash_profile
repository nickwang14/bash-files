# Path stuff
export PATH="/bin:/usr/bin:/usr/local/bin:${PATH}"
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
alias path="echo -e ${PATH//:/\\n}"

# Shell shortcuts
alias ls='ls -F'
alias ll='ls -lh'

# ComputerAliases
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

# finderShowHidden:   Show hidden files in Finder
# finderHideHidden:   Hide hidden files in Finder
# -------------------------------------------------------------------
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias show='finderShowHidden'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
alias hide='finderHideHidden'

# cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
# -----------------------------------------------------------------------------------
alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Load bash aliases
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# Load bash functions
if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

# Load veem shortcuts
if [ -e $HOME/.veem_profile ]; then
    source $HOME/.veem_profile
fi
