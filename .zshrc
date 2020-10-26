export PATH="$PATH:$HOME/Library/Python/2.7/bin" # pip installation location
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/Scripts"
export PKG_CONFIG_PATH="/Library/Frameworks/Mono.framework/Versions/4.6.2/lib/pkgconfig":$PKG_CONFIG_PATH

# setup completion
autoload -Uz compinit
compinit

# setup histfile
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt incappendhistory histexpiredupsfirst histignorespace extendedglob notify
unsetopt nomatch
bindkey -e

# colorize commands
alias ls='ls -G'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export CLICOLOR=1
export LSCOLORS='ExcxdxfxgxxexcxdxfBxBx'
