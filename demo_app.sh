#! /bin/bash

echo "The Virtual Machine is now up ...."

echo "Installing some basic required packages ...."
# Install some basic Ubuntu packages
# apt-get update --fix-missing

# apt-get install -y build-essential software-properties-common curl git-core nano wget sqlite3 libsqlite3-dev --fix-missing

su vagrant << EOF
echo "Installing RVM ...."
# Install RVM
/bin/bash -lc "gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3"
# /bin/bash -lc "curl -L https://get.rvm.io | /bin/bash -s stable"
/bin/bash -lc "source /home/vagrant/.rvm/scripts/rvm"
/bin/bash -lc "rvm requirements"

echo "Installing Ruby ...."
# Install Ruby
/bin/bash -lc "type rvm | head -n 1"
# /bin/bash -lc "rvm install 2.2.4"

/bin/bash -lc "rvm use 2.2.4"

/bin/bash -lc "sudo gem install bundler"

echo "Installing gems ...."
/bin/bash -lc "cd /vagrant/devops-test && bundle install"

EOF

