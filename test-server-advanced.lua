local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

function exilePlayer(Player, Char)
	task.spawn(function()
		repeat task.wait(2) until Char:FindFirstChild("Humanoid") and workspace:WaitForChild("BoxOfWhitelist").PrimaryPart
		
		Char:MoveTo(workspace.BoxOfWhitelist.PrimaryPart.Position)
		
		ReplicatedStorage.Bricks.DeathHint:FireClient(Player, "Blue", {"This epic cutscene was from RTE |9", "hahaha this is so cool B) |9"})
		
		local Hum = Char.Humanoid
		Hum.Health += -100
      
	end)
end

for _, Player in Players:GetPlayers() do
	if not Player.Character then
		return
	end
	exilePlayer(Player, Player.Character)
end
