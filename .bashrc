if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Pretty prompt
PS1="\[\e[1;34m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \[\e[0;35m\]\`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\\\\\*\ \(.+\)$/\(\\\\\\\\\1\)\ /\`\[\e[0;36m\]$\[\e[m\] "

# Important env vars
export EDITOR=vim
#export FLEX_HOME=~/sdks/flex_sdk_4.5.1.21328/
export FLEX_HOME=/Applications/Adobe\ Flash\ Builder\ 4.6/sdks/4.6.0
export ANT_OPTS="-Xmx1024m -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
export DROPBOX=/Users/yonits/joytunes_dropbox/Dropbox/

export PATH=/opt/local/bin:/opt/local/sbin:/Users/yonits/bin:/usr/local/Cellar/ruby/1.9.3-p0/bin:${FLEX_HOME}/bin:/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin:/Users/yonits/sdks/Sparrow-Framework/sparrow/util/atlas_generator:/Applications/Xcode.app/Contents/Developer/usr/bin:${PATH}
