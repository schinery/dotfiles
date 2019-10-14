

function bunmit() {
  echo -e "\033[1;32mChecking gems to update...\033[0m"
  bundle update && bundle exec rake test && git add Gemfile Gemfile.lock && git commit -m "Gem update" && git push
  echo -e "\033[1;32mUpdate done\033[0m"
}

function furypush() {
  echo -e "\033[1;32mFury pushing...\033[0m"
  git push origin master && git push origin develop && git push --tags && git push fury master
  echo -e "\033[1;32mFury pushed\033[0m"
}

function gclean() {
  echo -e "\033[1;32mCleaning remoteless local git branches...\033[0m"
  git fetch -p && git branch -d `git branch -vv | grep ': gone]' | awk '{print $1}' | xargs`
  echo -e "\033[1;32mCleaned local branches\033[0m"
}
