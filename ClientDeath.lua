--!client

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage.Bricks
local DeathHint = Bricks.DeathHint

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid

DeathHint:FireClient(Player, "Yellow", 
	{"Hello there player. |4", 
	"This is a longer text! |6"}
)
Humanoid:TakeDamage(100)
