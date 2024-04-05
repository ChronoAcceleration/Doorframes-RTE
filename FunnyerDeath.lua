--!server

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage.Bricks
local DeathHint = Bricks.DeathHint

local Players = game:GetService("Players")

for _, Player in Players:GetPlayers() do
  Player.Character.Humanoid:TakeDamage(100)
end

DeathHint:FireAllClients("Yellow", {
  "You stubbed your toe... HARD. The pain shot up your leg, causing a muscle spasm that triggered a nearby earthquake. The resulting tremors dislodged a precariously balanced stack of pickles in a nearby shop, which cascaded down and formed a slippery ramp. A stray squirrel, startled by the pickle avalanche, tripped over the ramp and launched itself into a jetpack-wearing tourist, sending them careening into you at mach speed. Oof. |50",
  "Lesson learned: Always wear sturdy shoes and be wary of rogue pickles.| 20"
})
