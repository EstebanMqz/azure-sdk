# mAKE a Script that will clone the remote repository given as var and then have it push to the remote repository and check with git remote -v if the pushes were sueccessful.
#!/bin/bash

#> Clone remote URL.
https://github.com/EstebanMqz/azure-sdk.com=$1 && git clone $1 && cd $(basename $1.git)


# Change dir. to repo.
cd {$pwd} || touch README.md && touch .gitignore
# Add, Commit & Push.
git add -A && git commit -m "README.md &&.gitignore" && git push --mirror
#Publish the repo in my profile with the remote URL. 
git remote -v && cd ..mv remote_repos.sh subdir/.sh && ./remote_repos.sh
git mv remote_repos.sh .sh #> End of Script.

