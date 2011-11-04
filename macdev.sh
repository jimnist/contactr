#!/bin/sh

# run development server for django and compass assumses that you are 
# in the surfscout root and that your environment is set up for 
# running the application (via 'workon surfscout' or some equivalent)
# you also need to make sure you have sql server running

PATHDIR=`pwd`
GEMSET="middleman"

/usr/bin/osascript <<EOF
activate application "Terminal"
tell application "Terminal"
    repeat with win in windows
        try
            if get frontmost of win is true then
                do script "rvm gemset use $GEMSET" in (selected tab of win)
            end if
        end try
    end repeat
end tell
tell application "System Events"
    keystroke "t" using {command down}
end tell
tell application "Terminal"
    repeat with win in windows
        try
            if get frontmost of win is true then
                do script "cd $PATHDIR" in (selected tab of win)                
                do script "rvm gemset use $GEMSET" in (selected tab of win)
                do script "guard" in (selected tab of win)
            end if
        end try
    end repeat
end tell
tell application "System Events"
    keystroke "t" using {command down}
end tell
tell application "Terminal"
    repeat with win in windows
        try
            if get frontmost of win is true then
                do script "cd $PATHDIR" in (selected tab of win)                
                do script "rvm gemset use $GEMSET" in (selected tab of win)
                do script "shotgun" in (selected tab of win)
            end if
        end try
    end repeat
end tell
EOF
clear
