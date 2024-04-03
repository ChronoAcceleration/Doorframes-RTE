--!server

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bricks = ReplicatedStorage.Bricks
local Hint = Bricks.Hint

local Players = game:GetService("Players")
local Player = Players.PABMAXICHAC --// My own for example

Hint:FireClient(Player, "Hiiii oof!", 10)

--[[

( Player, Text, Time )

]]
