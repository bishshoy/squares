set desiredPosition to {0.33, 0.0}
set desiredSize to {0.667, 1.0}

tell application "Finder" to set screenSize to bounds of window of desktop

set screenWidth to item 3 of screenSize
set screenHeight to item 4 of screenSize

set finalPositionX to (item 1 of desiredPosition) * screenWidth
set finalPositionY to (item 2 of desiredPosition) * screenHeight
set finalPosition to {finalPositionX, finalPositionY}

set finalSizeX to (item 1 of desiredSize) * screenWidth
set finalSizeY to (item 2 of desiredSize) * screenHeight
set finalSize to {finalSizeX, finalSizeY}

set theBounds to {finalPosition} & {finalSize}

tell application "System Events"
	tell front window of (first application process whose frontmost is true) to set {position, size} to theBounds
end tell
