alias ll="ls -alhF"
alias lg=lazygit
alias luamake=~/.config/lsp/lua-language-server/3rd/luamake/luamake

if [ "$IS_LINUX" ]
then
    alias bat=batcat
    alias delta=git-detla
fi
if [ "$IS_MACOS" ]
then
    alias python2="/Users/hfarrow/.pyenv/versions/2.7.18/bin/python"
    alias adb2="/Users/hfarrow/Library/Android/sdk/platform-tools-r26.0.0/adb"
fi
