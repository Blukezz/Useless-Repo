local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Exenus.",
	LoadingTitle = ">/ Exenus.",
	LoadingSubtitle = "by Blukez",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub",
	},
	Discord = {
		Enabled = true,
		Invite = "HH8EGfDnHw", -- The Discord invite code, do not include discord.gg/
		RememberJoins = true, -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		FileName = "SiriusKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "Hello",
	},
})

local Welcome = Window:CreateTab("Info", 11433532654)

local WelcomeSection = Welcome:CreateSection("-- [ Welcome ] --")
local Note = Welcome:CreateParagraph({
	Title = "Welcome!",
	Content = "Hello! Welcome to one of only hubs that actually still works!"
})
local HatListSection = Welcome:CreateSection("-- [ Required Hats ] --")
local Hat = Welcome:CreateLabel("Vans Black White Checkerboard Umbrella (Search on yt to get)")
local Hat1 = Welcome:CreateLabel("Roblox Girl Hair")
local Hat2 = Welcome:CreateLabel("Lavender Updo")
local Hat3 = Welcome:CreateLabel("Brown Hair")
local Hat4 = Welcome:CreateLabel("Red Roblox Cap")
local Hat5 = Welcome:CreateLabel("Chestnut Bun")


----

local Reanimation = Window:CreateTab("Reanimate")

local ReanimateSection = Reanimation:CreateSection("-- [ Reanimate ] --")

local ReanimationNote = Reanimation:CreateLabel("This reanimate might take a second to load.")
local CameraMovementValue = true
local CameraMovementToggle = Reanimation:CreateToggle({
	Name = "Camera Movement (Camera Subject Head)",
	CurrentValue = true,
	Flag = "Corn",
	Callback = function(Value)
		if Value == true then
			CameraMovementValue = true
		else
			CameraMovementValue = false
		end
	end,
 })
 local NoclipValue = false
 local NoclipToggle = Reanimation:CreateToggle({
	Name = "Noclip",
	CurrentValue = false,
	Flag = "Corn1",
	Callback = function(Value)
		if Value == true then
			NoclipValue = true
		else
			NoclipValue = false
		end
	end,
 })
local Reanimate = Reanimation:CreateButton({
	Name = "Reanimate",
	Callback = function()
		local Global = getgenv and getgenv() or shared
		Global.CameraMovement = CameraMovementValue
		Global.Noclip = NoclipValue
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Normal.lua'))()
	end,
})


----

local Scripts = Window:CreateTab("Scripts")

local Rejoin = Scripts:CreateButton({
	Name = "Stop Script (Rejoin)",
	Callback = function()
		if #game.Players:GetPlayers() <= 1 then
			LocalPlayer:Kick("Rejoining..")
			wait()
			game:GetService('TeleportService'):Teleport(game.PlaceId, LocalPlayer)
		else
			game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
		end
	end,
})

local NoHatsSection = Scripts:CreateSection("-- [ No Hats ] --")
local Gale = Scripts:CreateButton({
	Name = "Gale",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Gale.lua"))()
	end,
})
local Ender = Scripts:CreateButton({
	Name = "Ender",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Ender.lua"))()
	end,
})
local Chill = Scripts:CreateButton({
	Name = "Chill",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Chill.lua"))()
	end,
})
local Sonic = Scripts:CreateButton({
	Name = "Sonic",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Sonic.lua"))()
	end,
})
local Sans = Scripts:CreateButton({
	Name = "Sans",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Sans.lua"))()
	end,
})
local ServerAdmin = Scripts:CreateButton({
	Name = "Server Admin",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Server%20Admin.lua"))()
	end,
})
local NebulaGlitcher = Scripts:CreateButton({
	Name = "Nebula Glitcher",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Nebula%20Glitcher.lua"))()
	end,
})

local OptionHatsSection = Scripts:CreateSection("-- [ Hats Optional ] --", true)
local Chips = Scripts:CreateButton({
	Name = "Chips (Pillow)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Chips.lua"))()
	end,
})

local HatsSection = Scripts:CreateSection("-- [ Hats Required ] --", true)
local NepV = Scripts:CreateButton({
	Name = "Neptunion V (Demonic Sword)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Nep%20V.lua"))()
	end,
})
local NepVV = Scripts:CreateButton({
	Name = "Neptunion V (Slasher)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Nep%20V%20Slasher.lua"))()
	end,
})
local AbyssEye = Scripts:CreateButton({
	Name = "Abyss Eye (Demonic Sword)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Scripts/Abyss%20Eye.lua"))()
	end,
})

----

local Changelogs = Window:CreateTab("Changelogs")
local Update4 = Changelogs:CreateSection("4/15/23")
local U4Change = Changelogs:CreateLabel("[ + ] Added stop script button.")
local U4Change1 = Changelogs:CreateLabel("[ + ] Added camera that follows the head.")
local U4Change2 = Changelogs:CreateLabel("[ + ] Added options for reanimating.")
local U4Change3 = Changelogs:CreateLabel("[  ] RCD workaround coming soon!")
local Update3 = Changelogs:CreateSection("4/8/23")
local U3Change = Changelogs:CreateLabel("[ + ] Added chips.")
local U3Change1 = Changelogs:CreateLabel("[ + ] Modified the reanimate.")
local U3Change2 = Changelogs:CreateLabel("[ + ] Added a optional hats section.")
local Update2 = Changelogs:CreateSection("4/4/23")
local U2Change = Changelogs:CreateLabel("[ + ] Removed the need for mizt reanimate.")
local U2Change1 = Changelogs:CreateLabel("[ + ] Added a reanimate page.")
local U2Change2 = Changelogs:CreateLabel("[ + ] Added some scripts.")
local U2Change3 = Changelogs:CreateLabel("[ - ] Removed broken scripts.")
local Update1 = Changelogs:CreateSection("4/2/23")
local U1Change = Changelogs:CreateLabel("[ + ] Added everything.")
