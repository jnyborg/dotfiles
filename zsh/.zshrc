#export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/jnyborg/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Pure prompt
fpath+=("$HOME/.zsh/pure") 
#export PURE_PROMPT_SYMBOL=">"
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:virtualenv color white  # set conda env color



# Autojump
source /usr/share/autojump/autojump.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jnyborg/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jnyborg/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jnyborg/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jnyborg/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Python
export PYTHONPATH=$PYTHONPATH:.


# Nautilus as open
alias open="gtk-launch org.gnome.Nautilus"
# Snapd .desktop location: /var/lib/snapd/desktop/applications
alias charm="gtk-launch pycharm-community_pycharm-community > /dev/null 2>&1"

# Add pip installed programs to path
export PATH=~/.local/bin:$PATH
alias python="python3"
alias setngrok="python /home/jnyborg/git/dotfiles/scripts/set_beast_ngrok_port.py"
alias autodeploy="bash /home/jnyborg/git/dotfiles/scripts/auto-deploy.sh"


# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim=nvim

# Fix colors in tmux
export TERM=xterm-256color


# Vim mode
bindkey -v
export KEYTIMEOUT=1

# Restore useful standard bindings
bindkey '^ ' autosuggest-accept
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^r' history-incremental-search-backward
bindkey '^O' accept-line-and-down-history
bindkey '^S' history-incremental-search-forward

# function zle-keymap-select () {
#     if [ $KEYMAP = vicmd ]; then
#         # Set block cursor
#         echo -ne '\e[1 q'
#     else
#         # Set beam cursor
#         echo -ne '\e[5 q'
#     fi
# }
# # Bind the callback
# zle -N zle-keymap-select

# # Beam cursor is default
# echo -ne '\e[5 q'

