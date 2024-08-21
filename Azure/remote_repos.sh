# mAKE a Script that will clone the remote repository given as var and then have it push to the remote repository and check with git remote -v if the pushes were sueccessful.

#!/bin/bash

# Clone the remote repository
https://github.com/EstebanMqz/azure-sdk.git=$1 && git clone $1 && cd $(basename $1.git)
# Change dir to repo-
cd {$pwd} || touch README.md && touch .gitignore

# Add the README.md file to the repository
git add -A && git commit -m "README.md & .gitignore" && git push --mirror

REM Extract the pwd of the repo in the remote repository
remote_pwd=$(git remote -v | grep fetch | awk '{pr