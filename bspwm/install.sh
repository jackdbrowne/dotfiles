for src in $(find -H "$DOTFILES_ROOT/bspwm" -maxdepth 1 -name '*.symlink' -not -path '*.git*')
do
  dst="$HOME/.config/bspwm/$(basename "${src%.*}")"
  link_file "$src" "$dst"
done
