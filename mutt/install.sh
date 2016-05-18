for src in $(find -H "$DOTFILES_ROOT/mutt" -maxdepth 1 -name '*.symlink' -not -path '*.git')
do
  dst="$HOME/.mutt/$(basename "${src%.*}")"
  link_file "$src" "$dst"
done
