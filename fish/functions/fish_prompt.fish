function fish_prompt
    set -l last_status $status
    set -l normal (set_color normal)
    set -l light (set_color BBBBBB)
    set -l suffix '❯'

    set -l prompt_status ''
    if test $last_status -ne 0
        set prompt_status (set_color $fish_color_error) "[$last_status] " $normal
    end

    set -l root_indicator ''
    if fish_is_root_user
        set root_indicator '# '
    end

    set -l now (date +%H:%M)

    echo -s $light $now ' ' (prompt_pwd) (fish_git_prompt) ' ' $prompt_status
    echo -n -s $light $root_indicator $suffix ' ' $normal
end
