export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/jnyborg/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)


source $ZSH/oh-my-zsh.sh

# Pure prompt
fpath+=("$HOME/.zsh/pure") 
#export PURE_PROMPT_SYMBOL=">"
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:virtualenv color white  # set conda env color



# Autojump
source /usr/share/autojump/autojump.sh
bindkey '^ ' autosuggest-accept


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
alias open="nautilus"
alias charm="gtk-launch pycharm-professional_pycharm-professional.desktop > /dev/null 2>&1"
