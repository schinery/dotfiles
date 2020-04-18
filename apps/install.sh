



read -p "Do you want to try and (re)install your apps? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  dir="$(dirname "$0")"

  for file in $(ls $dir); do
    script="$dir/$file"
    [ "$file" != "install.sh" ] && [ -f "$script" ] && [ -x "$script" ] && "$script"
  done
fi;
