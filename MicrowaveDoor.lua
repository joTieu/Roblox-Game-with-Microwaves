
local clickDetector = script.Parent
local doorModel = script.Parent.Parent

local open = -90 -- rotates -90 degrees
local close = 90 -- rotates -90 degrees

-- Initialize door state
local doorOpen = false

-- Function to toggle door state
local function toggleDoor()
	if doorOpen then
		for i=0,close,10 do
			doorModel:PivotTo(doorModel:getPivot()*CFrame.Angles(0,math.rad(10),0))
			wait(1e-5)
		end
	else
		for i=0,open,-10 do
			doorModel:PivotTo(doorModel:getPivot()*CFrame.Angles(0,math.rad(-10),0))
			wait(1e-5)
		end
	end
	doorOpen = not doorOpen
end

-- Connect the function to the ClickDetector
script.Parent.MouseClick:Connect(toggleDoor)
