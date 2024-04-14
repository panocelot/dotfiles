autoload -U colors && colors
PS1="%F{white}%n%f%B%F{246}@%f%b%F{white}%m%f %F{241}%~%f > "

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

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

#aliases
alias ls='ls --color=auto'
alias hyprland=Hyprland
alias vol="wpctl get-volume @DEFAULT_SINK@"
alias panocelot="TERM=rxvt ssh panocelot@panocelot"
alias eww=eww-wayland
alias nijika="TERM=rxvt ssh nijika@panoclot.xyz"
