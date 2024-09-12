local digits = workspace.Microwave_DETAILED.theDigits

--local onLights = false

while task.wait(0.5) do
	for _, digitSegment in pairs (digits:GetChildren()) do
		if digitSegment:IsA("UnionOperation") then
			digitSegment.BrickColor = BrickColor.new("Cocoa")
			task.wait(0.5)
			digitSegment.BrickColor = BrickColor.new("Crimson")
		end
	end
end