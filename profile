
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_OPTS="-d32" # make java startup faster

#alias autotest="autotest -fc"

# vi key bindings!!
set -o vi

function gitclean() {
  git checkout .
  git clean -df
}

alias "gvim"="rvm use system do gvim"

repl() { perl -pi -w -e "s/$1/$2/g;" * }
replr() { perl -p -i -e "s/$1/$2/g" `grep -ril $1 *` }

source ~/.bashrc

