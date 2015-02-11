# Paths
export PATH=/usr/local/bin:$PATH:~/bin/

# Set default editor
export EDITOR=/Applications/Sublime\ Text\ 2.app 

# Aliases
alias ls="ls -G -d .*" # Show all files including hidden and use colours
alias composer="php /usr/bin/composer.phar"
alias edit='subl' ## edit files in Sublime

## Show hide hidden files
alias showHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias hideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

## Web Development
alias apacheEdit='edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page
httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }

# Regular Colors
RED='\e[0;31m'          # Red
GREEN='\e[0;32m'        # Green
YELLOW='\e[0;33m'       # Yellow
BLUE='\e[0;34m'         # Blue
PURPLE='\e[0;35m'       # Purple
CYAN='\e[0;36m'         # Cyan
WHITE='\e[0;37m'        # White

# Load in the git branch prompt script.
source ~/.git-prompt.sh
PS1="\[$RED\]\u:\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\[$CYAN\]\$(__git_ps1)\[$WHITE\]\$ "
