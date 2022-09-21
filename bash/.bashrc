#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias 50='ls -alstr --color=auto'
alias p='pwd|xsel -ib'
alias nets='systemctl status netctl-auto@wlp3s0'
alias netr='systemctl restart netctl-auto@wlp3s0'
alias ezokita='firefox -no-remote -P ezokita&'
alias vim_cheat='firefox -no-remote -P vim_cheat&'
alias xyz='firefox -no-remote -P xyz&'
alias income='firefox -no-remote -P Automatically_income_mng&'
alias ccsadmin='firefox -no-remote -P ccsadmin&'
alias ccs01='firefox -no-remote -P ccs01&'
alias ccs02='firefox -no-remote -P ccs02&'
alias ccs03='firefox -no-remote -P ccs03&'
alias proxy='firefox -no-remote -P expand_twitter&'
alias vd='vd --encoding=shift-jis'
alias w3='w3m $(xsel -op)'
alias yt='youtube-viewer -4 $(xsel -op)'
alias k='kanban'
alias pm='pulsemixer'
alias 6807491325='cd ~/Documents/ccs/manual/main/manual'
alias 400110='cd ~/Documents/makingNoteByVIM/400110'
alias y194='cd ~/Documents/makingNoteByVIM/y194'
alias 83='vim'
alias 79='cp'
alias 38='mv'
alias 3714='mkdir'
alias 71='cd'
alias 673914='cd ~/Documents/makingNoteByVIM/673914'
alias e2656='cd ~/Documents/makingNoteByVIM/EnglishNote'
alias 6982126='cd ~/Documents/makingNoteByVIM/6982126'
alias 074926='cd ~/Documents/makingNoteByVIM/074926'
alias 3210='cd ~/Documents/makingNoteByVIM/3210'
# alias khelp='w3m https://github.com/coderofsalvation/kanban.bash'
alias grep='grep --color=auto'
alias memory='vim ~/.note2021'
alias nbt='$HOME/nbt.sh'
alias mpv='mpv --no-video'
alias t='trans'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export TERM='xterm-256color'
export TERM='linux'
# export PATH="/home/kanda/.gem/ruby/2.6.0/bin:$PATH"
# exec udevadm control --reload

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion"  ]] && source "$HOME/.rvm/scripts/completion"

# for superman-vim
export PATH="$PATH:$HOME/.vim/plugged/vim-superman/bin"
complete -o default -o nospace -F _man vman

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"
export VIMRUNTIME="/usr/local/share/vim/vim82"

# export XDG_CONFIG_HOME=$HOME/test
# export XDG_DATA_HOME=test newsboat

PATH="/home/kanda/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/kanda/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kanda/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/kanda/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kanda/perl5"; export PERL_MM_OPT;
