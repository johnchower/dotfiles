# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
setopt appendhistory nomatch
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/john/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Change ZSH_THEME
ZSH_THEME="3den"

# https://www.codementor.io/linux/tutorial/configure-linux-toolset-zsh-tmux-vim
# Sample zshrc configs

export TERM="xterm-256color"

# Git aliases
alias gitd='git diff'
alias gits='git status'
alias gitc='git commit -m'
alias gita='git add'
