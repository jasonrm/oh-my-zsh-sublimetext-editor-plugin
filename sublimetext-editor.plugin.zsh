# Sublime Text 2 Aliases

local _sublime_darwin_paths > /dev/null 2>&1
_sublime_darwin_paths=(
    "/usr/local/bin/subl"
    "$HOME/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
    "$HOME/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
    "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
    "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
)

if  [[ $('uname') == 'Darwin' ]]; then

    for _sublime_path in $_sublime_darwin_paths; do
        if [[ -a $_sublime_path ]]; then
            export EDITOR="'$_sublime_path' -w"
            break
        fi
    done
fi
