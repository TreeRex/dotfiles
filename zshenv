# Tree's .zshenv initilization file

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

local CCL_DIR=$HOME/lisp/ccl
if [[ -d $CCL_DIR ]]; then
    export CCL_DEFAULT_DIRECTORY=$CCL_DIR
    export PATH=$CCL_DIR/scripts:$PATH
fi

local SBCL_DIR=$HOME/lisp/sbcl
if [[ -d $SBCL_DIR ]]; then
    export SBCL_HOME=$SBCL_DIR/lib/sbcl
    export PATH=$SBCL_DIR/bin:$PATH
fi

if [[ -x /usr/local/mysql/bin ]]; then
    export PATH=/usr/local/mysql/bin:$PATH
fi

if [[ -x /usr/libexec/java_home ]]; then
    export JAVA_HOME="$(/usr/libexec/java_home)"
fi
export JDK_HOME=$JAVA_HOME
export PATH=$JAVA_HOME/bin:$PATH

###
### EIS Build Tools 
###

local BUILDTOOLS_DIR=$HOME/tools/buildtools-lib

if [[ -x $BUILDTOOLS_DIR/maven/LATEST ]]; then
    export M2_HOME=$BUILDTOOLS_DIR/maven/LATEST
    export PATH=$M2_HOME/bin:$PATH
fi

if [[ -x $BUILDTOOLS_DIR/ant/LATEST ]]; then
    export ANT_HOME=$BUILDTOOLS_DIR/ant/LATEST
    export PATH=$ANT_HOME/bin:$PATH
fi

if [[ -d /usr/local/share/npm/bin ]]; then
    export PATH=/usr/local/share/npm/bin:$PATH
fi

if [[ -d $HOME/tools/jena ]]; then
    export JENAROOT=$HOME/tools/jena
    export PATH=$JENAROOT/bin:$PATH
fi

if [[ -d $HOME/tools/neo4j ]]; then
    export PATH=$HOME/tools/neo4j/bin:$PATH
fi

if [[ -d /usr/local/opt/ruby/bin ]]; then
    export PATH=/usr/local/opt/ruby/bin:$PATH
fi

if [[ -d $HOME/tools/glassfish/bin ]]; then
    export PATH=$HOME/tools/glassfish/bin:$PATH
fi

if [[ -d /Applications/DjView.app/Contents/bin ]]; then
    export PATH=/Applications/DjView.app/Contents/bin:$PATH
fi

if [[ -d /usr/texbin ]]; then
    export PATH=/usr/texbin:$PATH
fi

# We want /usr/local/bin at the front of the PATH so we get Homebrew stuff
# over OS X defaults.
if [[ -d /usr/local/bin ]]; then
    export PATH=/usr/local/bin:$PATH
fi

# My local bin trumps everything else
if [[ -d $HOME/bin ]]; then
    export PATH=$HOME/bin:$PATH
fi

export LANG=en_US.UTF-8
export PYTHONIOENCODING=utf-8
export LESSCHARSET=utf-8

export EDITOR=emacs

umask 002
# no core dumps, please
ulimit -c 0

setopt nohup pushd_silent pushd_ignore_dups

unset LOCALE

