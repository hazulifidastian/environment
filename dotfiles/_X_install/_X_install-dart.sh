sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt-get update
sudo apt-get install dart

echo "set PATH"

# set DART_HOME /usr/lib/dart
# set DART_PUB_CACHE $HOME/.pub-cache/bin
# set PATH $DART_HOME/bin $DART_PUB_CACHE $PATH
