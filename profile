# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export GBASEDBTSERVER=gbaseserver
export GBASEDBTDIR=/opt/GBASE/gbase
export GBASEDBTSQLHOSTS=/opt/GBASE/gbase/etc/sqlhosts.gbaseserver
export ONCONFIG=onconfig.gbaseserver
export PATH=/opt/GBASE/gbase/bin:$PATH
export GL_DATE="%iY-%m-%d"
export DATETIME="%iY-%m-%d %H:%M:%S"
export DB_LOCALE=zh_CN.utf8
export CLIENT_LOCALE=zh_CN.utf8
export LD_LIBRARY_PATH=${GBASEDBTDIR}/lib:${GBASEDBTDIR}/lib/esql:${GBASEDBTDIR}/lib/cli
export TERM=vt100
export TERMCAP=$GBASEDBTDIR/etc/termcap
export GBASEDBTTERM=termcap
export DBTEMP=$GBASEDBTDIR/tmp

