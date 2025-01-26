export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

export PATH="${HOME}/.config/lsp/lua-language-server/bin:$PATH}"

if [ "$IS_MACOS" ] 
then 
  export ANDROID_HOME="${HOME}/Library/Android/sdk"
  export PATH=$PATH:$ANDROID_HOME/emulator
  export PATH=$PATH:$ANDROID_HOME/platform-tools
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-23.jdk/Contents/Home"
fi
