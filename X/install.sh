for src in $(find -H "$DOTFILES_ROOT/X" -maxdepth 1 -name '*.symlink' -not -path '*.git')
do
  dst="$HOME/.$(basename "${src%.*}")"
  link_file "$src" "$dst"
done
