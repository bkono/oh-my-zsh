# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr

alias tft='tail -1000f ~/servers/tomcat/logs/catalina.out'
alias tom-up='~/servers/tomcat/bin/startup.sh'
alias tom-down='~/servers/tomcat/bin/shutdown.sh'
alias istomup='ps -ax | grep tomcat'
alias istibup='ps -ax | grep tibems'
alias tf='tail -10000f '
alias mongo-up='mongod run --config /usr/local/etc/mongod.conf'
alias redis-up='redis-server /usr/local/etc/redis.conf'
alias l='ls -al'

function mcd() {
  mkdir $1 && cd $1;
}

function worknet() {
  scselect "MGM"
  sleep 3
  export internal_gateway=$(netstat -rn | grep '^default.*en2' | awk '{print $2}') 
  export external_gateway=$(netstat -rn | grep '^default.*en0' | awk '{print $2}') 

  sudo route delete 10.0.0.0
  sudo route delete 172.0.0.0

  sudo route add -net 10.0.0.0 $internal_gateway  255.0.0.0
  sudo route add -net 172.0.0.0 $internal_gateway  255.0.0.0
  sudo route add -net 10.230.0.0 $external_gateway 255.255.0.0
}

function homenet() {
  scselect "Automatic"
  sudo route delete 10.0.0.0
  sudo route delete 172.0.0.0
}