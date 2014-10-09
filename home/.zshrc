#
# < Homeshick setup >
#
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
alias hs='homeshick'
# </ Homeshick setup >

#
# < Antigen setup >
#
source "$HOME/.antigen.zsh"

antigen bundles <<EOB
  robbyrussell/oh-my-zsh lib/
EOB

antigen theme robbyrussell
# </ Antigen setup >

#
# < Misc >
#
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
# ArchLinux paths
export PATH="$PATH:/usr/bin/vendor_perl:/usr/bin/core_perl"

# Shell aliases for all git aliases
alias g='git'
for ga in ` git config -l | \grep alias | cut -d '.' -f 2 | sed -e 's/=.*//g' ` ; do
  alias g${ga}="git ${ga}"
done
# </ Misc >
