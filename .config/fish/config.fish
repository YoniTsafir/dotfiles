set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch magenta
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
	set last_status $status

	set_color blue
	printf '%s' (whoami)
	set_color normal
	printf '@'
	set_color yellow
	printf '%s' (hostname)	
	set_color $fish_color_cwd
	printf ' %s' (prompt_pwd)
	set_color normal
	printf '%s ' (__fish_git_prompt)
	set_color normal
end

# aliases
for i in (grep -E "^alias" ~/.bash_aliases | grep -v "&&" | grep -v "\$(")
	eval $i
end

function git_current_branch
	git symbolic-ref HEAD 2> /dev/null | sed -e 's/refs\/heads\///'
end

alias gpl='git fetch origin; and grb origin/(git_current_branch)'
alias gps='git push --set-upstream origin HEAD:(git_current_branch)'
alias gitpulltherightway='git stash; and gpl; and git stash pop'
