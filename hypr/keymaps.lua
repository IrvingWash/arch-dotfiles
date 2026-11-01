local terminal    = "kitty"
local menu        = "rofi -show drun"

local mainMod = "SUPER"

-- Lock screen
hl.bind(mainMod .. " + l", hl.dsp.exec_cmd("hyprlock"))

-- Run terminal
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))

-- Close window
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- Exit
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

-- Toggle floating/tiling
hl.bind(mainMod .. " + z", hl.dsp.window.float({ action = "toggle" }))

-- Toggle fullscreen
hl.bind(mainMod .. " + f", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Menu
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))

-- Toggle horizontal/vertical split
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Move window within workspace
hl.bind(mainMod .. " + SHIFT + m", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + i", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + e", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + n", hl.dsp.window.move({ direction = "down" }))

-- Move focus
hl.bind(mainMod .. " + m", hl.dsp.focus({ direction = "left"  }))
hl.bind(mainMod .. " + i", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + e", hl.dsp.focus({ direction = "up"    }))
hl.bind(mainMod .. " + n", hl.dsp.focus({ direction = "down"  }))

-- Screenshot
hl.bind(mainMod .. " + p", hl.dsp.exec_cmd('grim - | satty -f - --copy-command wl-copy -o "~/Pictures/Sreenshots/%Y%m%d_%H%M%S.png"'))

-- Draw window with mouse
hl.bind(mainMod ..  " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
-- Resize window with mouse
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Rezise
hl.bind(mainMod .. " + R", hl.dsp.submap("resize"))
hl.define_submap("resize", function()
    hl.bind("SHIFT + i", hl.dsp.window.resize({ x = 30,  y = 0,   relative = true }))
    hl.bind("SHIFT + m",  hl.dsp.window.resize({ x = -30, y = 0,   relative = true }))
    hl.bind("SHIFT + k",    hl.dsp.window.resize({ x = 0,   y = -30, relative = true }))
    hl.bind("SHIFT + n",  hl.dsp.window.resize({ x = 0,   y = 30,  relative = true }))

    hl.bind("escape", hl.dsp.submap("reset"))
end)

-- Pick workspace
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
