export MAVEN_HOME=/usr/local/Cellar/maven/current
export M2_HOME=/usr/local/Cellar/maven/current

function nmvn() {
  temp=`expr "$1" : '.*\(\..*\)'`
  artifactId=${temp:1}
  echo "** Generating new maven project for artifactId $artifactId **"
  echo
  mvn archetype:generate -DgroupId=$1 -DartifactId=$artifactId -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
  echo
  echo ".. completed."
}