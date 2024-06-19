# ch - browse chrome history
ch() {
	local cols sep
	cols=$((COLUMNS / 3))
	sep='{::}'

	cp -f ~/Library/Application\ Support/Google/Chrome/Default/History /tmp/h

	sqlite3 -separator $sep /tmp/h \
		"select substr(title, 1, $cols), url
     from urls order by last_visit_time desc" |
		awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
		fzf --ansi --multi | sed 's#.*\(https*://\)#\1#' | xargs open
}

# Searches aliases and functions
function fzf-aliases() {
	CMD=$(
		(
			(alias)
			(functions | grep "()" | cut -d ' ' -f1 | grep -v "^_")
		) | fzf | cut -d '=' -f1
	)

	eval $CMD
}

# Open file in Nvim
function fzf-nvim(){
  local file=$(fzf --multi --reverse) #get file from fzf
  if [[ $file ]]; then
    for prog in $(echo $file); #open all the selected files
    do; $EDITOR $prog; done;
  else
    echo "cancelled fzf"
  fi
}

# Kill Processes
function fzf-kill-processes() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}
