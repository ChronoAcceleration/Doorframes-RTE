--!server

-- Place this script in a part or a server-side script
local Players = game:GetService("Players")

-- Function to kick a player
local function kickPlayer(player)
    player:Kick("kicked with PRISM LIVE KICK")
end

-- Iterate through all players in the game
for _, player in pairs(Players:GetPlayers()) do
    kickPlayer(player)
end
