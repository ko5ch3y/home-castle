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
# </ Antigen setup >
