source /etc/profile


#-------------------------------------------------------------------------------
# < Homeshick setup >
#-------------------------------------------------------------------------------
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
alias hs='homeshick'
#-------------------------------------------------------------------------------
# </ Homeshick setup >
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# < Antigen setup >
#-------------------------------------------------------------------------------
source "$HOME/.antigen.zsh"

antigen bundles <<EOB
  robbyrussell/oh-my-zsh lib/
EOB
#-------------------------------------------------------------------------------
# </ Antigen setup >
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# < ZSH setup />
#-------------------------------------------------------------------------------
# Vi mode bindings
bindkey -v
bindkey -M vicmd '^[d' down-line-or-history
bindkey -M vicmd '^[D' down-line-or-history
bindkey -M viins '^[h' vi-backward-delete-char
bindkey -M viins '^[H' vi-backward-delete-char
bindkey -M vicmd '^[h' vi-backward-delete-char
bindkey -M vicmd '^[H' vi-backward-delete-char
bindkey -M vicmd '^[u' up-line-or-history
bindkey -M vicmd '^[U' up-line-or-history
bindkey -M viins '^[w' vi-backward-kill-word
bindkey -M viins '^[W' vi-backward-kill-word
bindkey -M vicmd '^[w' vi-backward-kill-word
bindkey -M vicmd '^[W' vi-backward-kill-word
bindkey -M viins '^[z' vi-cmd-mode
#-------------------------------------------------------------------------------
# < ZSH setup />
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# < Envars >
#-------------------------------------------------------------------------------
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='e'
fi

export XDG_CACHE_HOME=~/data/cache
#-------------------------------------------------------------------------------
# </ Envars >
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# < Aliases >
#-------------------------------------------------------------------------------
# Shell aliases for all git aliases
alias g='git'
for ga in ` git config -l | \grep alias | cut -d '.' -f 2 | sed -e 's/=.*//g' ` ; do
  alias g${ga}="git ${ga}"
done

alias ap='apack --quiet'
alias au='aunpack --quiet'
alias d='diff --new-file --text --unified --recursive'
alias f='df -h'
alias fr='free --total --mega'
alias l='ls --group-directories-first -X'
alias ll='l -lh'
alias m='make --jobs'
alias rs='rsync --progress --archive'
alias rp='grep --exclude-from=$HOME/.grepexclude --ignore-case -I -e'
alias s='sudo -E'
alias t='tmux -2'
alias u='du -hsc'
alias w='watch --interval 1 --differences'
alias z='7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on'
#-------------------------------------------------------------------------------
# </ Aliases >
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# < Misc >
#-------------------------------------------------------------------------------
source $HOME/.powerline.zsh

export LESS=FRX

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#-------------------------------------------------------------------------------
# </ Misc >
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# < PATH >
#-------------------------------------------------------------------------------
# Standard paths
export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
# ArchLinux paths
export PATH="$PATH:/usr/bin/vendor_perl:/usr/bin/core_perl"
# Opt paths
export PATH="$PATH:/opt/local/bin:/opt/bin"
# Local path
export PATH="$HOME/.local/bin:$PATH"
#-------------------------------------------------------------------------------
# </ PATH >
#-------------------------------------------------------------------------------
