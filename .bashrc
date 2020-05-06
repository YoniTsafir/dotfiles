if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Pretty prompt
HOST_NO_USER=$(echo ${HOSTNAME/$USER-/} | cut -d"." -f1)
PS1="\[\e[1;34m\]\u\[\e[m\]@\[\e[1;33m\]$HOST_NO_USER\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \[\e[0;35m\]\`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\\\\\*\ \(.+\)$/\(\\\\\\\\\1\)\ /\`\[\e[0;36m\]$\[\e[m\] "

# Important env vars
export EDITOR=vim
export ANT_OPTS="-Xmx1024m -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
export ANDROID_HOME=~/Library/Android/sdk/
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=/opt/local/bin:/opt/local/sbin:/Users/yonits/bin:/Users/yonits/.gem/ruby/2.5.0/bin:/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:${ANDROID_HOME}/ndk-bundle/:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:/Users/yonits/Library/Python/2.7/bin:${PATH}:/Applications/Android\ Studio.app/Contents/MacOS

if [ xcode-select --print-path 2>/dev/null >/dev/null -eq 0 ]; then
    export TRANSPORTER_HOME=`xcode-select --print-path`/../Applications/Application\ Loader.app/Contents/MacOS/itms/bin
    export PATH=${PATH}:$TRANSPORTER_HOME
fi

# prefer local over system python libs
export PYTHONPATH=${HOME}/Library/Python/2.7/lib/python/site-packages:${PYTHONPATH}

# added by travis gem
[ -f /Users/yonits/.travis/travis.sh ] && source /Users/yonits/.travis/travis.sh

# Google Specific Stuff
if [ -f ~/.google_bashrc ]; then
    . ~/.google_bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/yonits/.sdkman"
[[ -s "/Users/yonits/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/yonits/.sdkman/bin/sdkman-init.sh"
