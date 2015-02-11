# Dot files
Collection of dotfiles

* bash_profile
* gitconfig
* gitignore
* gitmessage

##.bash_profile

Sets up a few useful aliases, adds a coloured prompt which shows user name, path and current git branch

###Aliases
```bash
ls                        # Show all files including hidden and use colours
composer                  # Open composer
edit                      # Use sublime text for editing files
showHidden                # Show hidden files on OSX (you will need to relaunc finder after)
hideHidden                # Hide hidden files on OSX (you will need to relaunc finder after)
apacheEdit                # Edit Apache httpd.conf
apacheRestart             # Restart Apache
editHosts                 # Edit Hosts file
herr                      # Tails HTTP error logs
apacheLogs                # Shows apache error logs
httpHeaders google.com    # Grabs headers from web page
httpDebug google.com      # Grabs headers from web page              
```

###Editor
Set up default editor
```bash
export EDITOR=/Applications/Sublime\ Text\ 2.app 
```

### Prompt
Set up coloured prompt with git branch
```bash
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
```


## Git Config
Default git config settings and aliases

## Git Ignore
Global files to ignore

## Git Message
Default commit message template
