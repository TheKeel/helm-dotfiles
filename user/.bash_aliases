# listar con exa
alias ls='exa -al --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'
alias lt='exa -aT --color=always --group-directories-first --icons --level=2'

# Regresar
alias ..="cd .. && exa  -l"
alias ...="cd ../.. && exa -l"
alias ....="cd ../../.. && exa -l"
alias .....="cd ../../../.. && exa -l"
alias ......="cd ../../../../.. && exa -l"
alias .......="cd ../../../../../.. && exa -l"

# Seguridad
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias chgrp='chgrp --preserve-root'
alias rm='rm -I --preserve-root'
alias ssh='ssh -o StrictHostKeyChecking=yes'
alias cp='cp -i'
alias mv='mv -i'
alias ports='ss -tulpn'

# Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Pacman
alias pacman='sudo pacman --color=auto'

# Vim
alias vim='nvim'
alias vi='nvim'

# Atajos de carpetas
alias conf='cd .config && ls'
alias down='cd Download && ls'
alias note='cd Notes && ls'
alias pro='cd Programming && ls'

# Programacion Sql
alias prosql='cd Programming/Sql/ && ls'

# Programacion python
alias propy='cd Programming/Python/ && cinit && ls -l && cinfo'
alias py='python'
alias chatbot='cd ~/Programming/Python/proyectos/tecbot && cinit && cactivate chatbot && vi'

# Programcion C
alias proc='dosbox Programming/Ensablador/TC/BIN/TC.EXE'

# Ensablador
alias proe='cd Programming/Asm/swasm && asm &'
alias asm='dosbox -c "cd Asm/swasm"'

# Rust
alias prors='cd Programming/Rust && ls'
alias newrs='cargo new'

# Hash
alias hash='md5sum'

# Git
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'

alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'

alias gd='git diff'
alias gst='git stash'
alias gstp='git stash pop'

alias gr='git remote'
alias grv='git remote -v'

alias gca='git commit -am'
alias gpom='git push origin main'

# Conda
alias cinit='eval "$(~/miniconda3/bin/conda shell.bash hook)"'
alias cactivate='conda activate'
alias cdeactivate='conda deactivate'
alias cinstall='conda install python'
alias cinfo='conda info --envs'
alias cclean='conda clean --all'

# Wget
alias wftp='wget --mirror --convert-links --page-requisites --no-parent -P .'

# Xcopy
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -out'

# Systemctl
alias sc='sudo systemctl'
alias scs='sudo systemctl status'
alias sct='sudo systemctl start'
alias scp='sudo systemctl stop'

# Limpiar pantalla
alias cls='clear'

# Salir
alias :wq='exit'

# traducir
traducir() {
  trans :"$1" "$2"
}

# Convertir
convertir() {
  echo "obase=$1; ibase=$2; $3" | bc
}

# Extraer
extraer ()
{
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Crear directorios
mkcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}

# Buscar en historial
histgrep() {
    grep -r "$1" ~/.bash_history
}
