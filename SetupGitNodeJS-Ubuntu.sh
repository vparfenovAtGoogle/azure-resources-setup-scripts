# Updating package registry index
sudo apt update
#sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common
# Installing git client
sudo apt-get install git
# Installing Node.JS
sudo apt install npm
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
# Installing Node.JS packages
npm install express --save
npm install hbs --save
npm install uuid --save
# Cloning application from github
git clone https://github.com/vparfenovAtGoogle/TestGitHubAPIs.git
git pull https://github.com/vparfenovAtGoogle/TestGitHubAPIs.git
# Starting Node.JS application
nodejs bin/www
# Testing Node.JS application by issuing a simple HTTP request
curl http://localhost:3000
# Installing Docker community edition
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce
# Adding user to docker group to fix access: change vparfenov to your username
sudo usermod -a -G docker vparfenov
# Restart docker service just in case
sudo service docker restart
# Use from another terminal
docker ps
docker images
# Create Docker image
touch Dockerfile
vi Dockerfile
# see Dockerfile
touch .dockerignore
# see .dockerignore
# Build Docker image
docker build -t vparfenov/node-test-app .
docker images
# Run the image in the detached (-d) mode 
docker run -p 49160:3000 -d vparfenov/node-test-app
docker ps
curl -i http://localhost:49160
