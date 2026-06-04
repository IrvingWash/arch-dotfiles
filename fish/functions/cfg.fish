# Open ~/.config/[path]

function cfg
    if count $argv > /dev/null
        cd ~/.config/$argv
    else
        cd ~/.config
    end
end
