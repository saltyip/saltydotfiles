if status is-interactive
    fastfetch
end

function nudge_prompt_hook --on-event fish_prompt
    if set -q __nudge_last_cmd
        nudge --trigger-cmd "$__nudge_last_cmd" & disown
        set -e __nudge_last_cmd
    end
end

function nudge_capture_hook --on-event fish_preexec
    if not string match -q "nudge*" -- $argv
        set -g __nudge_last_cmd $argv
    end
end


alias wallpaper="grep 'wallpaper = ' ~/.config/waypaper/config.ini | awk -F'/' '{print \$NF}'"

zoxide init fish | source
starship init fish | source
