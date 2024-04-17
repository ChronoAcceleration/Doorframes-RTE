--!server 

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage.Bricks
local Hint = Bricks.Hint

local Players = game:GetService("Players")
local Player = Players.FriendsClub109

Hint:FireClient(Player, "goofy palace", 6)
