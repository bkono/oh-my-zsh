# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr

alias tft='tail -1000f ~/servers/tomcat/logs/catalina.out'
alias tom-up='~/servers/tomcat/bin/startup.sh'
alias tom-down='~/servers/tomcat/bin/shutdown.sh'
alias bbe-up='/Users/bkonowitz/servers/preprod-match/bin/startup.sh'
alias bbe-down='/Users/bkonowitz/servers/preprod-match/bin/shutdown.sh'
alias tfbbe='tail -1000f /Users/bkonowitz/servers/preprod-match/logs/catalina.out'
alias istomup='ps -ax | grep tomcat'
alias istibup='ps -ax | grep tibems'
alias tf='tail -10000f '
alias mongo-up='mongod run --config /usr/local/etc/mongod.conf'

function mcd() {
  mkdir $1 && cd $1;
}