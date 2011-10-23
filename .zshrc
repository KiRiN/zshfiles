## 言語
export LANG=ja_JP.UTF-8

## 履歴
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data 

## 履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

## プロンプト
PROMPT="%{[33m%}[$USER %.]%{[m%} "
PROMPT2="%{[33m%}[$USER %_]%{[m%} "
RPROMPT="%{[32m%}[%~]%{[m%}"
SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "

## エイリアス
alias ls='ls -FG'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color=auto'
# パイプショートカット
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g W='| wc'
alias -g S='| sed'
alias -g A='| awk'
alias -g W='| wc'

## 補完
autoload -U compinit
compinit 


