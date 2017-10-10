source $HOME/antigen.zsh

# Alternate Pure prompt symbol
PURE_PROMPT_SYMBOL=">"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting 
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen bundle autojump

# Pure theme
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell Antigen that you're done.
antigen apply

# Auto suggestions config
source ~/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=0'

# Use ctrl+space to accept suggestions.
bindkey '^ ' autosuggest-accept
