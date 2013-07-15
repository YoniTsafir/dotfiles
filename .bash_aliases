alias ..='cd ..'
alias x='chmod +x'
alias realias='source ~/.bash_aliases'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias flashlog='tail -f /Users/yonits/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
alias ant='export ANT_OPTS="-Xmx1024m -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=128M"; ant'
alias ll='ls -l'
alias l='ll'
alias gitpulltherightway='git stash && git pull --rebase && git stash pop'
alias generate_atlas='~/sdks/sparrow-framework/sparrow/util/atlas_generator/generate_atlas.rb -m 2048x2048 `find . ! -path "*/old/*" -name "*.png"`'
alias play_duster_rec='~/bin/play -traw -esigned -b16 -r16000 -c1'
alias g='git'
alias gpl='git pull'
alias gps='git push'
alias gst='git status'

appdir() {
    cd "$(ps ax | grep $1.app | grep -v grep | grep -v AppCode | awk '{print "\""$5" "$6" "$7"\""} ' | sed "s/$1\.app\/$1//g")"
}
