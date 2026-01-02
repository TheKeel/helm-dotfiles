# ~/.bashrc

# Salir si no es interactiva
[[ $- != *i* ]] && return

# Historial
HISTSIZE=5000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r"

# Opciones de Shell
shopt -s checkwinsize
shopt -s globstar
shopt -s dotglob
shopt -s nocaseglob

# Alias
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Variables de Entorno
export TERMINAL=alacritty
export EDITOR=nvim
export PAGER=less
export PATH="$PATH:$HOME/.local/bin"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#export PATH="$HOME/miniconda3/bin:$PATH"

# Busqueda inversa
if [ -f /usr/share/fzf/key-bindings.bash ]; then
    source /usr/share/fzf/key-bindings.bash
    source /usr/share/fzf/completion.bash
fi

# Autocompletado
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        source /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        source /etc/bash_completion
    fi
fi

# Evitar sobreescritura accidental
set -o noclobber

# Evitar el pyc
export PYTHONDONTWRITEBYTECODE=1

# Mensaje de bienvenida
echo "¡Bienvenido al sistema, $(whoami)!"

# Prompt
export PS1='\[\e[1;38;5;207m\][\A] \[\e[1;38;5;228m\]\w \[\e[1;38;5;213m\]\$ \[\e[0m\]'
