tell application "Finder" to set screenSize to bounds of window of desktop
tell application "System Events" to set windowSize to size of front window of (first application process whose frontmost is true)
tell application "System Events" to tell process "Dock"
	set dockDimensions to size in list 1
	set dockHeight to item 2 of dockDimensions
end tell

set screenWidth to item 3 of screenSize
set screenHeight to item 4 of screenSize
set windowWidth to item 1 of windowSize
set windowHeight to item 2 of windowSize

set finalPositionX to (screenWidth - windowWidth) / 2
set finalPositionY to (screenHeight - windowHeight) / 2 - dockHeight
set finalPosition to {finalPositionX, finalPositionY}

set finalSizeX to windowWidth
set finalSizeY to windowHeight
set finalSize to {finalSizeX, finalSizeY}

set theBounds to {finalPosition} & {finalSize}

tell application "System Events"
	tell front window of (first application process whose frontmost is true) to set {position, size} to theBounds
end tell
