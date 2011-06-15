function motd {
    echo "***************************************";
    if [ -f ~/.motd ]; then
        cat ~/.motd;
    fi
    echo "***************************************";
}

# Repo functions

function dotdeploy {
    pwd=`pwd`
    hostname=`hostname`
    syspath=`echo $pwd | sed "s:$HOME/dotfiles/$hostname::"`
    echo "Deploying files and dirs"
    echo "SOURCE: $pwd"
    echo "DEST:   $syspath"
    read -p "Continue [y/n]?"
    if [ $REPLY != "y" ]; then
        echo "Exiting..."
        return
    fi
    rsync --progress -dvz -E . $syspath/
}

function dotdeploys {
    pwd=`pwd`
    hostname=`hostname`
    syspath=`echo $pwd | sed "s:$HOME/dotfiles/$hostname::"`
    echo "WARNING: using SUDO"
    echo "Deploying files and dirs"
    echo "SOURCE: $pwd"
    echo "DEST:   $syspath"
    read -p "Continue [y/n]?"
    if [ $REPLY != "y" ]; then
        echo "Exiting..."
        return
    fi
    sudo rsync --progress -dvz -E . $syspath/
}

function dotdiff {
    pwd=`pwd`
    hostname=`hostname`
    syspath=`echo $pwd | sed "s:$HOME/dotfiles/$hostname::"`
    diff -u $syspath/$@ $@
}

# vim:ft=sh:ts=4
