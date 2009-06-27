on openTabWith(command)
  tell application "Terminal"
    activate
    set windowCount to (count of the windows)
    tell application "System Events" to tell process "Terminal" to keystroke "t" using command down
    do script command in window 1
  end tell
end openTabWith

openTabWith("w; script/server")
openTabWith("w; rake api:server")
openTabWith("w; compass --watch")
