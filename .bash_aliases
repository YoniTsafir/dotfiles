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
alias generate_atlas='~/sdks/sparrow-framework/sparrow/util/atlas_generator/generate_atlas.rb -m 2048x2048 `find . ! -path "*/old/*" -name "*.png"`'
alias play_duster_rec='/usr/local/bin/play -traw -esigned -b16 -r16000 -c1'

appdir() {
    dir=$(ps ax | grep $1.app | grep -v grep | grep -v AppCode | awk '{print "\""$5" "$6" "$7"\""} ' | sed "s/$1\.app\/$1//g")
    eval cd "$dir"
}

pdf2png() {
    # Requires ImageMagick and ghostscript (available via brew install)
    pdf=$1
    png=${1%%.pdf}.png
    convert -density 300 "$pdf" -resize 1154 -append "$png"
}

# Git related, mostly making stuff idiot-proof, See http://notes.envato.com/developers/rebasing-merge-commits-in-git/

alias g='git'

function git_current_branch() {
  git symbolic-ref HEAD 2> /dev/null | sed -e 's/refs\/heads\///'
}
 
alias grb='git rebase -p'
alias gpl='git fetch origin && grb origin/$(git_current_branch)'
alias gps='git push --set-upstream origin HEAD:$(git_current_branch)'
alias gm='git merge --no-ff'
alias gst='git status'

alias gitpulltherightway='git stash && gpl && git stash pop'

# JoyTunes s3 download

function s3() {
	aws s3 cp ${1/https:\/\/joytunes-dev.s3.amazonaws.com/s3:\/\/joytunes-dev} .
}
