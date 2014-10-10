source /etc/profile


#
# < Homeshick setup >
#
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
alias hs='homeshick'
#
# </ Homeshick setup >
#


#
# < Antigen setup >
#
source "$HOME/.antigen.zsh"

antigen bundles <<EOB
  robbyrussell/oh-my-zsh lib/
EOB

antigen theme robbyrussell
#
# </ Antigen setup >
#


#
# < Envars >
#
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
# ArchLinux paths
export PATH="$PATH:/usr/bin/vendor_perl:/usr/bin/core_perl"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='e'
fi

export LESS=FRX
export XDG_CACHE_HOME=~/data/cache
#
# </ Envars >
#


#
# < Aliases >
#
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
alias u='du -hsc'
alias w='watch --interval 1 --differences'
alias z='7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on'
#
# </ Aliases >
#

#
# < Misc >
#
eval `keychain --eval --agents ssh id_ecdsa id_rsa`
#
# </ Misc >
#
