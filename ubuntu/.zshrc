export ZSH="/home/jnyborg/.oh-my-zsh"

ZSH_THEME=""

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)


source $ZSH/oh-my-zsh.sh

# Pure prompt
fpath+=("$HOME/.zsh/pure") 
#export PURE_PROMPT_SYMBOL=">"
autoload -U promptinit; promptinit
prompt pure

# Autojump
source /usr/share/autojump/autojump.sh
bindkey '^ ' autosuggest-accept

# Fix color for autosuggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'






