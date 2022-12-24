case `uname` in
    Darwin) IS_MACOS=1 ;;
    Linux) IS_LINUX=1 ;;
esac

if [ "$IS_MACOS" ] 
then 
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
