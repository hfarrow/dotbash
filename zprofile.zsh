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

# Added by Toolbox App
export PATH="$PATH:/Users/hfarrow/Library/Application Support/JetBrains/Toolbox/scripts"

# export PATH="/Users/hfarrow/.pyenv/versions/2.7.18/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"
