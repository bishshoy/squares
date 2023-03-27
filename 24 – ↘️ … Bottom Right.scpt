set desiredPosition to {0.5, 0.5}
set desiredSize to {0.5, 0.5}

tell application "Finder" to set screenSize to bounds of window of desktop
tell application "System Events" to tell process "Dock"
	set dockDimensions to size in list 1
	set dockHeight to item 2 of dockDimensions
end tell

set screenWidth to item 3 of screenSize
set screenHeight to item 4 of screenSize

set finalPositionX to (item 1 of desiredPosition) * screenWidth
set finalPositionY to (item 2 of desiredPosition) * (screenHeight - dockHeight) + 8
set finalPosition to {finalPositionX, finalPositionY}

set finalSizeX to (item 1 of desiredSize) * screenWidth
set finalSizeY to (item 2 of desiredSize) * (screenHeight - dockHeight - 32)
set finalSize to {finalSizeX, finalSizeY}

set theBounds to {finalPosition} & {finalSize}

tell application "System Events"
	tell front window of (first application process whose frontmost is true) to set {position, size} to theBounds
end tell
