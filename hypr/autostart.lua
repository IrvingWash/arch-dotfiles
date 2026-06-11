hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.on(
    "hyprland.start",
    function ()
        hl.exec_cmd("systemctl --user start hyprpolkitagent")
    end
)
hl.on(
    "hyprland.start",
    function ()
        hl.exec_cmd("hyprpaper")
    end
)
hl.on(
    "hyprland.start",
    function ()
        hl.exec_cmd("waybar")
    end
)

