source ~/.git-completion.bash

###################################################################
# Exports
###################################################################
export GIT_HOME=/usr/local/git
export PATH=${GIT_HOME}/bin:${PATH}
export MVN_HOME=/Users/manish/softwares/apache-maven-3.0.4
export PATH=${MVN_HOME}/bin:${PATH}
export MYSQL_HOME=/usr/local/mysql
export PATH=${MYSQL_HOME}/bin:${PATH}
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export VIRGO_HOME=~/softwares/virgo-tomcat-server-3.0.3.RELEASE/
export ECLPS_DEP_DIR=~/dev/cp_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/


###################################################################
# Alias
###################################################################
alias ll='ls -l'
alias clean_cp='mvn -Pproduction -Dmaven.test.skip=true clean install'

alias deljspapi='rm -rf ~/dev/cp_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/vmops.portal/WEB-INF/lib/jsp-api-2.1.jar'
alias srcdb='~/dev/scripts/src_db.sh'
alias dmpdb='~/dev/scripts/dmp_db.sh'
alias dropdb='~/dev/scripts/dropdb'

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


