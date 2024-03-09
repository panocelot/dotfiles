# Enable colors and change prompt:
autoload -U colors && colors
PS1="%F{131}%n%f%F{138}@%f%F{131}%m%f %F{101}%~%f > "
# History in cache directory:

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

(cat ~/.cache/wal/sequences &)
#wal -i "/home/kita/pix/wallpapers/$(echo "$(</home/kita/.config/sway/currentwallpaper)")"
