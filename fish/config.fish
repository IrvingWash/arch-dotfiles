set fish_greeting
set -gx EDITOR nvim

export VISUAL=nvim
export EDITOR=nvim

# PATH
fish_add_path ~/Apps/jai/bin
fish_add_path ~/Apps/Jails
fish_add_path ~/Apps/vulkan_sdk/x86_64/bin

# Enable vi mode
fish_vi_key_bindings
fish_vi_cursor

# Aliases
alias ppg="cd ~/Documents/PPG"
alias ls="eza --color=always --icons=always --classify=always -l -a --group-directories-first --show-symlinks --modified"
alias tree="eza -T"
