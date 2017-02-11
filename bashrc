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
alias cdu='cd ~/Dropbox/00_university/'
alias pre='open -a Preview'
alias sdm='diskutil mount disk2s1'
alias sdum='diskutil unmount disk2s1'
alias amp='~/dev/shell_script/amp.sh'
alias brew="env PATH=${PATH/\/Users\/tasukujp\/\.pyenv\/shims:/} brew"
alias brew="env PATH=${PATH/\/usr\/local\/CrossPack-AVR\/bin:?/} brew"
alias chauto='/Users/ty/dev/shell_script/chownauto.sh'
alias avrdudew=avrdudew
function avrdudew() { command avrdude -c avrispmkII -P usb -p t2313 -U flash:w:$1; }
alias cpavr="cp ~/dev/avr/attiny2313/Makefile ~/dev/avr/attiny2313/tn2313def.inc ./"

# prompt
#
export PS1='[\[\033[34m\]\t \u@\h:\W\[\033[00m\]]\$ '

# Android SDK
#
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:~/Library/Android/sdk/tools
export ANDROID_HOME=$PATH:~/Library/Android/sdk

# go
#
export GOPATH=$HOME/dev/go/third-party:$HOME/dev/go/my-project
export PATH=$HOME/dev/go/third-party/bin:$HOME/dev/go/my-project/bin:$PATH

# AVR
#
export PATH=$PATH:/usr/local/CrossPack-AVR/bin

