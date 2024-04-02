--!server

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage.Bricks
local DeathHint = Bricks.DeathHint

local Players = game:GetService("Players")
local Player = Players.TotallyNotChrono
local Character = Player.Character
local Humanoid = Character.Humanoid

Humanoid:TakeDamage(100)
DeathHint:FireClient(Player, "Yellow", 
	{"Hello there player. |4", 
	"This is a longer text! |6"}
)
