# git Completion
#
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi


# Vagrant Completion
#
if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi


# tmux Completion
#
if [ -f `brew --prefix`/etc/bash_completion.d/tmux ]; then
    source `brew --prefix`/etc/bash_completion.d/tmux
fi


# alias
#
alias ls='ls -GF'
alias l.='ls -d .*'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias vim='vim -p'
alias view='vim -R'
alias afp='afplay -q 1'
alias top='top -o cpu'
alias cdg='cd ~/dev/repos/'
alias cdv='cd ~/dev/vagrant/'


#prompt
export PS1='[\[\033[34m\]\t \u@\h:\W\[\033[00m\]]\$ '
