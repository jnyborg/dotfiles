source $HOME/antigen.zsh
source /usr/share/autojump/autojump.sh

# Alternate Pure prompt symbol
PURE_PROMPT_SYMBOL=">"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting 
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Pure theme
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell Antigen that you're done.
antigen apply

# Use ctrl+space to accept suggestions.
bindkey '^ ' autosuggest-accept
