local Tool = script.Parent
local ClickDetector = Tool.Handle.ClickDetector

if Tool.Handle:FindFirstChild("TouchInterest") then
	Tool.Handle.TouchInterest:Destroy()
end

ClickDetector.MouseClick:Connect(function(Player)
	local ToolClone = Tool:Clone()
	local Handle = ToolClone.Handle
	ToolClone.Parent = Player.Backpack
	Handle.ClickDetector:Destroy()
	Handle.Anchored = false
	ToolClone.ClickScript:Destroy()t
end)
