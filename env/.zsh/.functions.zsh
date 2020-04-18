function bunmit() {
  echo "Checking gems to update..."
  bundle update && bundle exec rake test && git add Gemfile Gemfile.lock && git commit -m "Gem update" && git push
  echo "Update done"
}

function furypush() {
  echo "Fury pushing..."
  git push origin master && git push origin develop && git push --tags && git push fury master
  echo "Fury pushed"
}

function gdl() {
  echo -e "Deleting remoteless local git branches..."
  git fetch -p && git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d
  echo -e "Deleting local branches"
}

function gfdl() {
  echo -e "Force deleting remoteless local git branches..."
  git fetch -p && git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D
  echo -e "Force deleting local branches"
}
