#!/bin/sh
ssh ubuntu@NODE.APP.SERVER.IP <<EOF
    cd ~/Calculator-Aoo-Angular
    git pull origin master
    curl -o-   https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh    | bash
    . ~/.nvm/nvm.sh
    nvm install v10.11.0
    npm install
    npm install -g nodemon pm2
    npm install -g @angular/cli
    pm2 restart ecosystem.config.js
    exit
EOF