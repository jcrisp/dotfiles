[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
export JAVA_OPTS="-d32" # make java startup faster

function gitclean() {
  git checkout .
  git clean -df
}

# alias "gvim"="rvm use system do gvim"
alias co="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# export EDITOR='rvm use system do gvim'
export EDITOR='gvim'
export VISUAL='vim'

alias updatedb='sudo /usr/libexec/locate.updatedb'

repl() { perl -pi -w -e "s/$1/$2/g;" * }
replr() { perl -p -i -e "s/$1/$2/g" `grep -ril $1 *` }

source ~/.bashrc # has machine specific commands in it, for historical reasons :-)

alias ls="ls -GF"
export LSCOLORS=Exfxcxdxbxegedabagacad

ssh-add -K ~/.ssh/id_rsa
