source ~/.git-completion.bash

###################################################################
# Exports
###################################################################
export MONGO_DATA=~/softwares/mongodb-osx-x86_64-2.4.9/data/db
export GIT_HOME=/usr/local/git
export MVN_HOME=~/softwares/apache-maven-3.0.4
export MYSQL_HOME=/usr/local/mysql
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export VIRGO_HOME=~/softwares/virgo-tomcat-server-3.0.3.RELEASE/
export ECLPS_DEP_DIR=~/dev/cp_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/
export PS1="\W $ "
export HISTSIZE=10000
export CATALINA_HOME=~/softwares/apache-tomcat-6.0.35
export MONGO_HOME=~/softwares/mongodb-osx-x86_64-2.4.9
export NODE_HOME=/Users/manish/softwares/node-v0.10.26-darwin-x64
export SCALEX_DEV_HOME=~/dev/sourcecode/cam/scalex
export PATH=${PSQL_HOME}/bin:${PATH}
export JETTY_BASE=$SCALEX_DEV_HOME/centro/external/dist/jetty/jetty-hightide-8.1.0.RC2
export HADOOP_HOME=/Users/manish/softwares/hadoop-2.4.1/
export PG_HOME=/Users/manish/softwares/PostgreSQL


export PATH=${MONGO_HOME}/bin:${PSQL_HOME}/bin:${NODE_HOME}/bin:${MYSQL_HOME}/bin:${MVN_HOME}/bin:${GIT_HOME}/bin:$HADOOP_HOME/bin:${PATH}:${PG_HOME}/bin

###################################################################
# Alias
###################################################################
alias ll='ls -l'
alias lt='ls -lrt'
alias clean_cp='mvn -Pproduction -Dmaven.test.skip=true clean install'

alias deljspapi='rm -rf ~/dev/cp_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/vmops.portal/WEB-INF/lib/jsp-api-2.1.jar'
alias srcdb='~/dev/scripts/src_db.sh'
alias dmpdb='~/dev/scripts/dmp_db.sh'
alias dropdb='~/dev/scripts/dropdb'

alias start_eclipse='~/softwares/eclipse\ 4.2/Eclipse.app/Contents/MacOS/eclipse --clean'
alias start_amqp='~/softwares/rabbitmq_server-3.0.0/sbin/rabbitmq-server start'
alias start_mongo='mongod --dbpath=$MONGO_DATA --rest'
alias start_psql='~/softwares/PostgreSQL/bin/postgres -D ~/softwares/PostgreSQL/data > /dev/null 2>1 &'
###################################################################
# Tricky commands 
###################################################################

mkcd () { mkdir -p "$@" && cd "$@"; }

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

tree () {
  ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
