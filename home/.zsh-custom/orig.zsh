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

# promptはthemeを使用

# 右プロンプトは残さない
setopt transient_rprompt

## エイリアス
setopt complete_aliases
alias ls='ls -FG'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color=auto'
alias du='du -h'
alias df='df -h'
# パイプショートカット
#alias -g L='| less'
#alias -g H='| head'
#alias -g T='| tail'
#alias -g G='| grep'
#alias -g W='| wc'
#alias -g S='| sed'
#alias -g A='| awk'
#alias -g W='| wc'

# 2 way redirect. for exsample '$ echo "some texts" > file1 > file2 '
setopt multios

## 補完
autoload -U compinit
compinit 
setopt list_packed
zstyle ':completion:*' list-colors ''

# 訂正
setopt correct

## ディレクトリ
setopt auto_cd
setopt auto_pushd

## 色
export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'

## キーバインド
bindkey -e

## 
export EDITOR=/usr/bin/vim

# Don't remove the slash of end of directory name
setopt noautoremoveslash


# この辺はlocalの設定に移すべきかな？

## perlbrew
[[ -s $HOME/perl5/perlbrew/etc/bashrc ]] && source $HOME/perl5/perlbrew/etc/bashrc

## pythonbrew
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

## nvm
[[ -s $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh

## phantomjs
[[ -d /usr/local/Cellar/phantomjs/1.6.1/bin/ ]] && PATH=$PATH:/usr/local/Cellar/phantomjs/1.6.1/bin/

