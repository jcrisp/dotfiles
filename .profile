
# MacPorts Installer addition on 2009-10-14_at_15:15:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/lib/mysql5/bin/:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 --log="/tmp/mysqllog"' 
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root shutdown'

alias db='mysql -u root ttct'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
export JAVA_OPTS="-d32" # make java startup faster

alias "hgp"='hg pull --rebase'

alias mri="rvm use 1.8.7-p249@online_channel"

alias nbn="cd ~/dev/nbn/web && mri"

alias autotest="autotest -fc"

alias dogfood="ssh root@10.2.20.142"

alias jr='rvm use jruby-1.5.3@online_channel'

# vi key bindings!!
set -o vi

function gitclean() {
  git checkout .
  git clean -df
}

