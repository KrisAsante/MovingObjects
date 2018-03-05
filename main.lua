-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Chris Asante
-- Created on: Jan 2018
-- 
-- This file makes an object scroll across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local scrollSpeedDeadgirl = 7
local scrollSpeedShoot = 3
local scrollSpeedfemale = 5

-- background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/background.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "grave background image"

-- character image with width and height
local Deadgirl = display.newImageRect("./assets/sprites/Deadgirl.png", 193, 210)
Deadgirl.x = 0
Deadgirl.y = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay
Deadgirl.ID = "deadgirl"

local Shoot = display.newImageRect("./assets/sprites/Shoot.png", 500, 510)
Shoot.x = 0
Shoot.y = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay
Shoot.ID = "Shoot"

local female = display.newImageRect("./assets/sprites/female_hang.png", 193, 210)
female.x = 0
female.y = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay
female.ID = "female"

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
    Deadgirl.x = Deadgirl.x + scrollSpeedDeadgirl
    Shoot.x = Shoot.x + scrollSpeedShoot
    female.x = female.x + scrollSpeedfemale
    print( display.fps )  -- note this displays how fast the current refresh is
end

Runtime:addEventListener("enterFrame", MoveImage)
-- MoveDeadgirl will be called at program start over and over (60 frames or times per second)