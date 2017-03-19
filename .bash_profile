# /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -seed -r -f -v -domain local -domain user -domain system
# unload org.cups.cupsd.plist
# cat foo.txt | mail

# status commands available
# nm - get New Mail count
# vol - Get volume %, 
# bat - battery percentage
# gw - get outside temperature for New York City
# sig - wifi signal strength

#servers
alias jrcii="ssh jrcii.com"
alias sdf='ssh sdf.lonestar.org'
alias mib='ssh 192.168.1.1'
alias mia='ssh 192.168.1.8'
alias sw='ssh 192.168.2.254'

# Manhattan Institute SSH RDP tunnel
alias mi='/src/bash/mi'

# My personal scripts
PATH=$PATH:/src/php:/src/bash:/src/python

alias win='/Applications/VMware\ Fusion.app/Contents/Library/vmrun start /Users/johnrcornell/Library/Application\ Support/VMware\ Fusion/Virtual\ Machines/Boot\ Camp/Boot\ Camp.vmwarevm'
alias mail='mail -s "shell output" rickycornell@gmail.com'
alias q='exit'
alias c='clear && tmux clear-history'
alias l='ls -F'
alias p='vim ~/.bash_profile'
alias s='sudo'
alias o='open'
alias reload='source ~/.bash_profile'
alias tv='terminal_velocity /Users/johnrcornell/Library/Application\ Support/Notational\ Data'
alias mkdir='mkdir -p'
alias untar='tar -zxvf'
alias weather='/src/github/Weather/weatherpy/weather.py -afne'
alias weather2='curl http://wttr.in/10001'
alias v='vim'
alias twitter='t stream timeline'
alias speed='speedtest-cli --simple'
alias g='lynx google.com'
alias ff='/Applications/Firefox.app/Contents/MacOS/firefox &'
alias hn='lynx http://news.ycombinator.com'
alias cda='cd /Applications'
alias cdd='cd ~/Downloads'
alias cdz='cd /Applications/Games/IF/z'
alias cdh='cd ~'
alias top='top -o cpu'
alias zork='frotz /Applications/Games/Z-Machine/zork1.z5'
alias vespers='frotz -d /Applications/Games/Z-Machine/vespers.z8'
alias dopewars='dopewars -bt'
alias httpdconf='sudo vim /opt/local/apache2/conf/httpd.conf'
alias syncmail='offlineimap -q'
alias cleardns='dscacheutil -flushcache'
alias paste='pastebinit -a none' #paste to pastebin automatically
alias m='cd ~/Downloads && offlineimap -q -f INBOX && mutt'
alias i='irssi'
alias python27='/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/python'
alias news='newsbeuter'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -Idummy'
alias starwars='telnet towel.blinkenlights.nl'
alias installed='port -q info --name --category --description --long_description requested'
alias cmus='cmus 2> /dev/null'

# Radio
alias wor='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://wor-am.akacast.akamaistream.net/7/495/179680/v1/auth.akacast.akamaistream.net/wor-am 2> /dev/null'
alias wgy='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://wgy-am.akacast.akamaistream.net/7/697/21577/v1/auth.akacast.akamaistream.net/wgy-am 2> /dev/null'
alias npr='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://www.npr.org/streams/mp3/nprlive24.pls 2> /dev/null'
alias rain='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://yp.shoutcast.com/sbin/tunein-station.pls?id=2340 2> /dev/null'
alias rain2='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://yp.shoutcast.com/sbin/tunein-station.pls?id=368490 2> /dev/null'
alias rain3='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy https://www.youtube.com/watch?v=mQ9OWMsJBTk 2> /dev/null'
alias art='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://yp.shoutcast.com/sbin/tunein-station.pls?id=366888 2> /dev/null'
alias chopin='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://yp.shoutcast.com/sbin/tunein-station.pls?id=590375 2> /dev/null'
alias phil='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://yp.shoutcast.com/sbin/tunein-station.pls?id=248466 2> /dev/null'
alias french='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://www.listenlive.eu/franceinfo.m3u 2> /dev/null' 
alias fip='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://www.listenlive.eu/fip128.m3u 2> /dev/null' 
alias bbc='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://bbcwssc.ic.llnwd.net/stream/bbcwssc_mp1_ws-eieuk 2> /dev/null' 
alias 1010='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://8733.live.streamtheworld.com:80/WINSAMAAC_SC 2> /dev/null' 
alias ewtn='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://http.yourmuze.com/ewtn-2/mp3-128-s.mp3 2> /dev/null' 
alias wabc='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://8723.live.streamtheworld.com:80/WABCAMAAC_SC 2> /dev/null' 
alias wktu='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://wktu-fm.akacast.akamaistream.net/7/110/19973/v1/auth.akacast.akamaistream.net/wktu-fm 2> /dev/null' 
alias chant='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://calmradio.com/playlists-free/gregorian.pls 2> /dev/null' 
alias chanteurs='/Applications/VLC.app/Contents/MacOS/VLC --quiet -Idummy http://sv1.vestaradio.com:4090/ 2> /dev/null' 

shopt -s histappend
PROMPT_COMMAND='history -a; history -c; history -r'

# Battery Percentage
alias bat='/src/php/bat.php'

# LiSt Permissions numerically
lsp()
{
 ls -l $1 | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/) \
             *2^(8-i));if(k)printf("%0o ",k);print}'
}

# New Mail
# Lists senders and subjects of new mail
nm()
{
	gmailpass="$(security find-internet-password -wl 'Gmail')"
	curl -u rickycornell@gmail.com:$gmailpass -s "https://mail.google.com/mail/feed/atom" | tr -d '\n' | awk -F '<entry>' '{for (i=2; i<=NF; i++) {print $i}}' | perl -pe 's/^<title>(.*)<\/title>.*?<name>(.*?)<\/name>.*$/$2 - $1/'
}

# Make man output the correct width
# and disable the less pager to enable scrolling
# with tmux
man() {
    export MANWIDTH=`tput cols` && \
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}
#alias man='export MANWIDTH=`tput cols` && man'
#export MANPAGER='ul | cat -s'

# Stream audio output to HTTP "podcast mobile handoff"
# Pickup via bookmark on iOS fstream 
bcast()
{
	icecast -c ~/Config/.icecast.xml
	jackdmp -r -dcoreaudio -dSoundflowerEngine:0 -r44100 -p1024 -i2 -o2 -s
	#jackdmp -r -dcoreaudio -d 'AppleHDAEngineOutput:1B,0,1,1:0' -r44100 -p1024 -o2
	#jackdmp -r -dcoreaudio -d '~:Aggregate:0' -r44100 -p1024 -i2 -o2
	darkice -c ~/Config/.darkice.cfg
}

# Monitor script changes and execute when they do
monitor()
{
	#monitorPath=$1
	fswatch -o $1 | xargs -n1 bash -c "osascript -e 'beep'; clear; $1;"
	#fswatch -o $monitorPath | clear && $monitorPath 
}

# changes find / -name "foo" to rfind foo
# / is default search scope unless there's an optional second argument
rfind()
{
	if [ $2 ]
	then
		dir=$2
	else
		dir="/"
	fi
	find $dir -name "$1" 2>/dev/null
}

# Move media to rainy day (watch queue)
# mvtord ~/Down*/Simpsons*
mvtord()
{
	mv $1 /Users/johnrcornell/Movies/Rainy\ Day/	
}

# Only return certain line numbers from the output, called like:
# lines file.txt 10 14
lines()
{
	sed -n -e "${2},${3} p" -e "${3} q" $1
}

# Only return a certain line number from the output
line()
{
	sed -n ${1}p
}

# Change to current Finder directory
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

# MacPorts install
install()
{
	sudo port install $1
}

# Simple Compile
# example "scomp foo" compiles foo.c into executable foo
scomp()
{
	gcc -Wall $1.c -o $1
	chmod +x $1
}


# MacPorts
export PATH="/opt/local/include:/opt/local/bin:/opt/local/sbin:$PATH"
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# Python
#export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/:$PATH"

# Prompt
# Show the last two levels of the current directory unless
# inside home in which case show ~
function twodirs
{
	# I disabled this because it caused a problem when cd'ing to
	# paths with an escaped space in them, todo: fix that
	if [ $(pwd) != '/Users/johnrcornell' ]
	then
		pwd |rev| awk -F / '{print $1,$2}' | rev | sed s_\ _/_
	else
		echo '~'
	fi
}

# Set prompt to bold, then yellow, working directory, $ sign, space, reset colors,
# then yellow again (this makes the prompt bold but not the input) then the debug
# trap resets the colors before output starts. A special library makes
# errors / stderr red
export PS1='\[$(tput bold)\]\[$(tput setaf 3)\]\W\\$ \[$(tput sgr0)\]\[$(tput setaf 3)\]'
trap 'tput sgr0' DEBUG

# Add bash colors
export CLICOLOR=1
export LSCOLORS=Hxfxcxdxexegedabagacad

# Use vi keybindings
set -o vi

#clear
#cat ~/Pictures/ASCII/elephant.txt

export TZ="/usr/share/zoneinfo/America/New_York"
export VISUAL=vim
export EDITOR="$VISUAL"

source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
