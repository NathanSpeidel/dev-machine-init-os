PATH=$PATH:~/apache-maven-3.3.9/bin
source ~/scripts/git-completion.sh

alias prettyJson='python -m json.tool'
alias runServer='python -m SimpleHTTPServer'
alias clearXCodeCaches='rm -rf ~/Library/Caches/CocoaPods && rm -rf ~/Library/Developer/Xcode/DerivedData/ && rm -rf ~/Library/Caches/com.apple.dt.Xcode/ && rm -rf $HOME/Library/Developer/CoreSimulator/Devices && sudo rm -rf /var/folders/*'

# Function to find a file by name recursively from this directory and open it with vim - this function will open the first file found
vimFind() {
  vim $(find . -name $1)
}

# this script writes ssh forwarded credentials another script ($HOME/.ssh/latestagent) so we can get them into tmux session
. ~/.ssh/saveagent
alias forwardCredentials='. $HOME/.ssh/latestagent'

export NVM_DIR="/Users/nspeidel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# ssh host completion
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

