#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 16.14.2
npm install --global yarn
npm install pm2 -g

ln -s $(which npm) /usr/local/bin/npm
ln -s $(which node) /usr/local/bin/node
ln -s $(which yarn) /usr/local/bin/yarn
ln -s $(which pm2) /usr/local/bin/pm2
ln -s $(which yarn) /usr/local/bin/yarn