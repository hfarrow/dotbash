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

# Requried for Cocoapods and Xcode builds to work. Use rbenv to manage ruby install and don't use the default Mac
# version. Must also be added to .bash_profile because pod is run by google plugins through /bin/sh/ which is bash
eval "$(rbenv init -)"

export PATH="/Applications/GameBench/GameBench/lib:$PATH"

# Android For Unity Source 2019.3.9f1
export ANDROID_SDK_ROOT="/Users/hfarrow/Library/Android/sdk"
export ANDROID_NDK_ROOT="/Users/hfarrow/Library/Android/sdk/ndk/21.3.6528147"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home"
