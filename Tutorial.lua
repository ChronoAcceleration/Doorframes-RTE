--!server

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage.Bricks
local Hint = Bricks.Hint

local Players = game:GetService("Players")
Hint:FireAllClients("This tutorial is cool!", 7)
