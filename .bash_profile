export PATH=~/usr/bin/python:$PATH
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dwatts/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dwatts/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dwatts/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dwatts/Downloads/google-cloud-sdk/completion.bash.inc'; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"



source ./Users/dwatts/functions/peev
source ./Users/dwatts/functions/repos
source ./Users/dwatts/functions/emoticon

alias vim='/usr/local/Cellar/macvim/8.1-155/vim'

#!/bin/bash
# This PS1 will show which branch you are working out of (if applicable) and if that branch is dirty.

# Formatting.
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 6)
WHITE=$(tput setaf 7)
BOLD=$(tput bold)
NF=$(tput sgr0) #No Formatting.

# Check whether Git repo is dirty.
function is_dirty {
  if [ -z "$(git status 2>/dev/null | grep -o 'nothing to commit')" ]; then
    echo '*'
  fi
}

# Determine which branch you are on.
function git_branch {
  git branch 2>/dev/null | awk -v DIRTY=$(is_dirty) '/^\*/ {print "(" $2 DIRTY ")"}'
}

export PS1="\[${BOLD}\]\[${WHITE}\][\[${GREEN}\]\u@\h\[${WHITE}\]]:\[${BLUE}\]\W\[${WHITE}\] \[${RED}\]\$(git_branch)\[${WHITE}\]\$ \[${NF}\]"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
