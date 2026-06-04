function fish_mode_prompt
    contains -- $fish_key_bindings fish_vi_key_bindings fish_hybrid_key_bindings
    or return

    switch $fish_bind_mode
        case default
            set_color --bold BBBBBB
            echo '[N] '
        case insert
            set_color --bold BBBBBB
            echo '[I] '
        case replace_one
            set_color --bold BBBBBB
            echo '[R] '
        case replace
            set_color --bold BBBBBB
            echo '<R> '
        case visual
            set_color --bold BBBBBB
            echo '[V] '
        case '*'
            set_color --bold BBBBBB
            echo '[?] '
    end
    set_color normal
end
