function fish_mode_prompt
    contains -- $fish_key_bindings fish_vi_key_bindings fish_hybrid_key_bindings
    or return

    switch $fish_bind_mode
        case default
            set_color --bold EF9F76
            echo '[N] '
        case insert
            set_color --bold EF9F76
            echo '[I] '
        case replace_one
            set_color --bold EF9F76
            echo '[R] '
        case replace
            set_color --bold EF9F76
            echo '<R> '
        case visual
            set_color --bold EF9F76
            echo '[V] '
        case '*'
            set_color --bold EF9F76
            echo '[?] '
    end
    set_color normal
end
