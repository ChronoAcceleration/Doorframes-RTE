--!server

local ServerScriptService = game:GetService("ServerScriptService")
local ServerStorage = game:GetService("ServerStorage")
local Game = ServerScriptService.Game
local entityHandler = require(Game.entityHandler)

--// Example Configuration for Blitz

local Config = {
	Model = ServerStorage.Entities.BackdoorRush,
	Name = "BackdoorRush",
	Speed = 100,
	DelayTime = 2,
	Damage = 100,
	KillRange = 50,
	HeightOffset = 2,
	BackwardsMovement = false,
	AttackDelay = 0, -- Delay for attack
	HalfRebounds = true, -- Logic Similar to Blitz
	Cycles = { -- Because Half Rebounds are enabled, Cycles affect
		Max = 2,
		Min = 1,
		WaitTime = 2,
	}
}

Debug = {
	OnEntitySpawned = function()
		print("Entity:"..Config.RealModel.Name.." Spawned!")
	end,
	OnEntityDespawned = function()
		print("Entity:"..Config.RealModeldel.Name.." Despawned!")
	end,
	OnEntityStartMoving = function()
		print("Entity:"..Config.RealModel.Name.." started moving!")
	end,
	OnEntityFinishedRebound = function()
		print("Entity:"..Config.RealModel.Name.." finished rebound!")
	end,
	OnEntityEnteredRoom = function(Room)
		print("Entity:"..Config.RealModel.Name.." entered Room: "..Room.Name.."!")
	end,
	OnEntityAttack = function(Player)
		print("Entity:"..Config.RealModel.Name.." attacked "..Player.Name.."!")
	end
}

entityHandler:Spawn(Config)
