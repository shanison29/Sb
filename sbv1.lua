repeat task.wait() until game:IsLoaded()

spawn(function()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
end)

local namecall
    namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local Args = {...}
        if getnamecallmethod() == "FireServer" and tostring(self) == "WS" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS2" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
            return
        elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'WalkSpeedChanged' then
            return
        end
        return namecall(self, ...)
    end)

local SafeSpot = Instance.new("Part", workspace)
SafeSpot.Position = Vector3.new(-1500,100,-1500)
SafeSpot.Name = "Spot"
SafeSpot.Size = Vector3.new(60,60,60)
SafeSpot.Anchored = true
SafeSpot.Transparency = .7

local SafeSpot2 = Instance.new("Part", workspace)
SafeSpot2.Position = Vector3.new(119, 500, -21)
SafeSpot2.Name = "Spot2"
SafeSpot2.Size = Vector3.new(30,30,30)
SafeSpot2.Anchored = true
SafeSpot2.Transparency = .7

local jesus = Instance.new("Part", workspace)
jesus.Name = "jesusWalk"
jesus.Size = Vector3.new(2047, 0.009, 2019)
jesus.Position = Vector3.new(-80.5, -10.005, -246.5)
jesus.CanCollide = false
jesus.Anchored = true
jesus.Transparency = 1
	
local arenaVoid = Instance.new("Part", workspace)
arenaVoid.Name = "arenaVoid"
arenaVoid.Size = Vector3.new(798, 1, 1290)
arenaVoid.Position = Vector3.new(3450, 59.009, 68)
arenaVoid.CanCollide = false
arenaVoid.Anchored = true
arenaVoid.Transparency = 1
               
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shanison29/ggg/main/orion3')))()
                
local Window = OrionLib:MakeWindow({Name = "Koolkat", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "ShanSB"})

                local Tab = Window:MakeTab({
                    Name = "Farming",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
				
				local Tab1 = Window:MakeTab({
                    Name = "Slap",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                local Tab2 = Window:MakeTab({
                    Name = "Normal TP",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
				
				 local Tab3 = Window:MakeTab({
                    Name = "Ghost TP",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
				
                local Tab4 = Window:MakeTab({
                    Name = "Anti Gloves",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                local Tab5 = Window:MakeTab({
                    Name = "Beta",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                local Tab6 = Window:MakeTab({
                    Name = "Security",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                 local Tab7 = Window:MakeTab({
                    Name = "Other",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })

--------------------------------------------------------

local virtualUser = game:GetService("VirtualUser")
local vim = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlaceID = game.PlaceId
local TPService = game:GetService("TeleportService")

local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local RootPart = character:FindFirstChild("HumanoidRootPart")
local Humanoid = character:FindFirstChild("Humanoid")
local Torso = character:FindFirstChild("Torso")
local Head = character:FindFirstChild("Head")
local Entered = character:FindFirstChild("entered")



--Aura
local MaxDistance = 20

--Alert
local SoundDelay = 1
local Sound = Instance.new('Sound', game:GetService'SoundService')
Sound.SoundId = 'rbxassetid://4590662766'
Sound.Volume = 5

--Whitelist nearby player
local Myself = {
"TrazerGamingYT",
"PROlegend_98",
"xLichtxBachx"
}

--Player Counter
local playernum = 0
local numtofarm = 10

--Save and lock Position
local Savepos

--Ghost mode safe spots
local SafeMArena = CFrame.new(-1504, 133, -1506)
local SafeAArena = CFrame.new(-1504, 133, -1510)
local SafeMDefault = CFrame.new(119, 518, -21)
local SafeADefault = CFrame.new(119, 518, -26)


local PAUSE = false
local ACTIVE = false
local ALIVE = true
local PUSHER = false
local TELEPORTING = false

local Ass = false
local Kaa = false

local Bobb = false
local Sfarmm = false
local ASfarmm = false
local Pfarmm = false

local MainA = false
local AltA = false
local MainD = false
local AltD = false


local Rnamee = false
local Astopp = false
local Adminn = false

local GMODEL = "OFF"
local GMODEA = "OFF"
local GMODED = "OFF"

local RJ = "OFF"
local LOWEST = "OFF"

local Voidd = false
local Cubee = false
local Barr = false
local Brazz = false
local Antizaa = false
local Buss = false
local Pushh = false
local Reaperr = false
local Maill = false
local Stunn = false
local Hrockk = false
local Bubblee = false

local Lockk = false
local Whitee = false

-------------Random Wait----------
local randomw = math.random(2, 4)

-------------------Glove Hit functions------------------------

shared.gloveHits = {
    
    ["Default"] = ReplicatedStorage.b,
    ["Extended"] = ReplicatedStorage.b,
    ["T H I C K"] = ReplicatedStorage.GeneralHit,
    ["Squid"] = ReplicatedStorage.GeneralHit,
    ["Gummy"] = ReplicatedStorage.GeneralHit,
    ["RNG"] = ReplicatedStorage.GeneralHit,
    ["Tycoon"] = ReplicatedStorage.GeneralHit,
    ["Charge"] = ReplicatedStorage.GeneralHit,
    ["Baller"] = ReplicatedStorage.GeneralHit,
    ["Tableflip"] = ReplicatedStorage.GeneralHit,
    ["Booster"] = ReplicatedStorage.GeneralHit,
    ["Shield"] = ReplicatedStorage.GeneralHit,
    ["Track"] = ReplicatedStorage.GeneralHit,
    ["Goofy"] = ReplicatedStorage.GeneralHit,
    ["Confusion"] = ReplicatedStorage.GeneralHit,
    ["Elude"] = ReplicatedStorage.GeneralHit,
    ["Glitch"] = ReplicatedStorage.GeneralHit,
    ["Snowball"] = ReplicatedStorage.GeneralHit,
    ["ðŸ—¿"] = ReplicatedStorage.GeneralHit,
    ["Obby"] = ReplicatedStorage.GeneralHit,
    ["Voodoo"] = ReplicatedStorage.GeneralHit,
    ["Leash"] = ReplicatedStorage.GeneralHit,
    ["Flamarang"] = ReplicatedStorage.GeneralHit,
    ["Kinetic"] = ReplicatedStorage.GeneralHit,
    ["Berserk"] = ReplicatedStorage.GeneralHit,
    ["Rattlebones"] = ReplicatedStorage.GeneralHit,
    ["Chain"] = ReplicatedStorage.GeneralHit,
    ["Ping Pong"] = ReplicatedStorage.GeneralHit,
    ["Ultra Instinct"] = ReplicatedStorage.GeneralHit,
    ["Diamond"] = ReplicatedStorage.DiamondHit,
    ["ZZZZZZZ"] = ReplicatedStorage.ZZZZZZZHit,
    ["Brick"] = ReplicatedStorage.BrickHit,
    ["Snow"] = ReplicatedStorage.SnowHit,
    ["Pull"] = ReplicatedStorage.PullHit,
    ["Flash"] = ReplicatedStorage.FlashHit,
    ["Spring"] = ReplicatedStorage.springhit,
    ["Swapper"] = ReplicatedStorage.HitSwapper,
    ["Bull"] = ReplicatedStorage.BullHit,
    ["Dice"] = ReplicatedStorage.DiceHit,
    ["Ghost"] = ReplicatedStorage.GhostHit,
    ["Thanos"] = ReplicatedStorage.ThanosHit,
    ["Stun"] = ReplicatedStorage.HtStun,
    ["Za Hando"] = ReplicatedStorage.zhramt,
    ["Fort"] = ReplicatedStorage.Fort,
    ["Magnet"] = ReplicatedStorage.MagnetHIT,
    ["Pusher"] = ReplicatedStorage.PusherHit,
    ["Anchor"] = ReplicatedStorage.hitAnchor,
    ["Space"] = ReplicatedStorage.HtSpace,
    ["Boomerang"] = ReplicatedStorage.BoomerangH,
    ["Dream"] = ReplicatedStorage.Dreamhit,
    ["Mail"] = ReplicatedStorage.MailHit,
    ["Golden"] = ReplicatedStorage.GoldenHit,
    ["Cheeky"] = ReplicatedStorage.CheekyHit,
    ["Reaper"] = ReplicatedStorage.ReaperHit,
    ["Defense"] = ReplicatedStorage.DefenseHit,
    ["Killstreak"] = ReplicatedStorage.KSHit,
    ["Reverse"] = ReplicatedStorage.ReverseHit,
    ["Shukuchi"] = ReplicatedStorage.ShukuchiHit,
    ["Duelist"] = ReplicatedStorage.DuelistHit,
    ["Woah"] = ReplicatedStorage.woahHit,
    ["Ice"] = ReplicatedStorage.IceHit,
    ["Adios"] = ReplicatedStorage.hitAdios,
    ["Blocked"] = ReplicatedStorage.BlockedHit,
    ["Engineer"] = ReplicatedStorage.engiehit,
    ["Rocky"] = ReplicatedStorage.RockyHit,
    ["Conveyor"] = ReplicatedStorage.ConvHit,
    ["STOP"] = ReplicatedStorage.STOP,
    ["Phantom"] = ReplicatedStorage.PhantomHit,
    ["Wormhole"] = ReplicatedStorage.WormHit,
    ["Acrobat"] = ReplicatedStorage.AcHit,
    ["Plague"] = ReplicatedStorage.PlagueHit,
    ["Megarock"] = ReplicatedStorage.DiamondHit,
    ["[REDACTED]"] = ReplicatedStorage.ReHit,
    ["bus"] = ReplicatedStorage.hitbus,
    ["Phase"] = ReplicatedStorage.PhaseH,
    ["Warp"] = ReplicatedStorage.WarpHt,
    ["Bomb"] = ReplicatedStorage.BombHit,
    ["Bubble"] = ReplicatedStorage.BubbleHit,
    ["Jet"] = ReplicatedStorage.JetHit,
    ["Shard"] = ReplicatedStorage.ShardHIT,
    ["potato"] = ReplicatedStorage.potatohit,
    ["Cult"] = ReplicatedStorage.CULTHit,
    ["bob"] = ReplicatedStorage.bobhit,
    ["Buddies"] = ReplicatedStorage.buddiesHIT,
    ["Moon"] = ReplicatedStorage.CelestialHit,
    ["Jupiter"] = ReplicatedStorage.CelestialHit,
    ["Spy"] = ReplicatedStorage.SpyHit,
    ["Detonator"] = ReplicatedStorage.DetonatorHit,
    ["Rage"] = ReplicatedStorage.GRRRR,
    ["Trap"] = ReplicatedStorage.traphi,
    ["Orbit"] = ReplicatedStorage.Orbihit,
    ["Hybrid"] = ReplicatedStorage.HybridCLAP,
    ["Slapple"] = ReplicatedStorage.SlappleHit,
    ["Disarm"] = ReplicatedStorage.DisarmH,
    ["Dominance"] = ReplicatedStorage.DominanceHit,
    ["Link"] = ReplicatedStorage.LinkHit,
    ["Custom"] = ReplicatedStorage.CustomHit,
    ["Mitten"] = ReplicatedStorage.MittenHit,
    ["Hallow Jack"] = ReplicatedStorage.HallowHIT,
    ["OVERKILL"] = ReplicatedStorage.Overkillhit,
    ["The Flex"] = ReplicatedStorage.FlexHit,
    ["God's Hand"] = ReplicatedStorage.Godshand,
    ["Error"] = ReplicatedStorage.Errorhit
    
}


---------Current Glove local Function----------

local function getGlove()
return localPlayer.leaderstats.Glove.Value
end

----------------Auto rejoin on kick----------

players.PlayerRemoving:connect(function(mee)
    if mee == localPlayer then
      Teleport()
    end
end)

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

queueteleport([[
if game.PlaceId == 6403373529 or game.PlaceId == 9015014224 then
loadstring(game:HttpGet('https://raw.githubusercontent.com/shanison29/Sb/main/load'))()
end
]])

---------------Player Count on GUI-------------

local countdisplay = Tab:AddLabel("-- Player Count:  "..tostring(playernum + 1).."  --")

for i,v in pairs(players:GetChildren())do 
    if v ~= localPlayer then 
        playernum = playernum + 1
		countdisplay:Set("-- Player Count:  "..tostring(playernum).."  --")
    end
end

players.PlayerAdded:Connect(function()
   playernum = playernum + 1
   countdisplay:Set("-- Player Count:  "..tostring(playernum).."  --")
end)

players.PlayerRemoving:Connect(function()
    playernum = playernum - 1
	countdisplay:Set("-- Player Count:  "..tostring(playernum).."  --")
end)

-----------------Player Respawn and Died------------------

localPlayer.Character.Humanoid.Died:Connect(function()
ACTIVE = false
ALIVE = false
end)

localPlayer.CharacterAdded:Connect(function()
ALIVE = true
end)


------------------///TAB 1///--------------------

local DNUMFARM = Tab:AddDropdown({
Name = "Player Limit to Farm",
Default = 10,
Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14},
Save = true,
Callback = function(numfarm)
numtofarm = numfarm
end    
})

--------------------------------------------------------

local DAS = Tab1:AddDropdown({
Name = "Auto Slap (Need Glove Equipped)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "ASflag",
Callback = function(As)

if As == "ON" then
	if not Ass then
	    OrionLib:MakeNotification({
	    Name = "Notice..",
	    Content = "Auto Slap Enabled..",
	    Image = "rbxassetid://4483345998",
	    Time = 3
	    })
	Ass = true
	end
elseif As == "OFF" then
    if Ass then
	    Ass = false
	end
end

while Ass and task.wait() do
	if not PAUSE and localPlayer.Character:FindFirstChild("entered") then
		virtualUser:CaptureController()
		virtualUser:ClickButton1(Vector2.new(120,120))
	end
task.wait()
end

end
})

------------------------------------------

local DKA = Tab1:AddDropdown({
Name = "Slap Aura",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "KAflag",
Callback = function(Ka)

if Ka == "ON" then
    if not Kaa then
	    OrionLib:MakeNotification({
	    Name = "Notice..",
	    Content = "Slap Aura Enabled..",
	    Image = "rbxassetid://4483345998",
	    Time = 3
	    })
	    Kaa = true
	end
elseif Ka == "OFF" then
    if Kaa then
	    Kaa = false
	end
end

while Kaa and task.wait() do
	if not PAUSE and localPlayer.Character:FindFirstChild("entered") and  localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") then

      pcall(function()
            for i, v in next, players:GetPlayers() do
                if v ~= localPlayer and v.Character and v.Character:FindFirstChild("entered") then
                      if v.Character:FindFirstChild("Head") then
                            if v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("rock") == nil then 
                                 if localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                    local Magnitude = (localPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                                      if MaxDistance >= Magnitude then
                                        shared.gloveHits[getGlove()]:FireServer(v.Character:WaitForChild("Head"))
                                      end
                                 end
                            end
                        end
                  end
            end
      end)
	end
task.wait()
end

end
})

-------------------------------------

local DDIST = Tab1:AddDropdown({
Name = "Slap Aura Range",
Default = 20,
Options = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 100, 500, 1000},
Save = true,
Callback = function(Dist)
MaxDistance = Dist
end    
})

---------------------------------------------

local DPFARM = Tab:AddDropdown({
Name = "Player Farm (Ghost)",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "PFARMflag",
Callback = function(Pfarm)

if Pfarm == "ON" then
    if not Pfarmm then
	    Pfarmm = true
	end
elseif Pfarm == "OFF" then
    if Pfarmm then
	    Pfarmm = false
	end
end

end
})

----------------------------------------------

local DGFARM = Tab:AddDropdown({
Name = "ALT Farm (Ghost)",
Default = "OFF",
Options = {"OFF", "MAIN ARENA", "ALT ARENA", "MAIN DEFAULT", "ALT DEFAULT"},
Flag = "GFARMflag",
Callback = function(Gfarm)

if Gfarm == "MAIN ARENA" then
	AltA = false
	MainD = false
	AltD = false
	MainA = true
elseif Gfarm == "ALT ARENA" then
	MainA = false
	MainD = false
	AltD = false
	AltA = true
elseif Gfarm == "MAIN DEFAULT" then
	MainA = false
	AltA = false
	AltD = false
	MainD = true
elseif Gfarm == "ALT DEFAULT" then
	MainA = false
	AltA = false
	MainD = false
	AltD = true
elseif Gfarm == "OFF" then
	MainA = false
	AltA = false
	MainD = false
	AltD = false
end

end
})

-------------------------------------------------

local DBOB = Tab:AddDropdown({
Name = "BOB Farm (Replica)",
Default = "OFF",
Save = true,
Options = {"OFF", "ON"},
Flag = "BOBflag",
Callback = function(Bob)

if Bob == "ON" then
    if not Bobb then
        if localPlayer.Character:FindFirstChild("entered") then
	    localPlayer.Character.Humanoid.Health = 0
	    Bobb = true
	    else
	    Bobb = true
	    end
	end
elseif Bob == "OFF" then
    if Bobb then
	    Bobb = false
	end
end

end
})

--------------------------------------------------

local DSFARM = Tab:AddDropdown({
Name = "Slapple Farm",
Default = "OFF",
Save = true,
Options = {"OFF", "ON"},
Flag = "SFARMflag",
Callback = function(Sfarm)

if Sfarm == "ON" then
    if not Sfarmm then
	    Sfarmm = true
	end
elseif Sfarm == "OFF" then
    if Sfarm then
	    Sfarmm = false
	end
end

end
})

--------------------------------------




------------------///TAB 2///--------------------



Tab2:AddButton({
Name = "TP to SafeBox (Arena)",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until localPlayer.Character:FindFirstChild("entered")
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = SafeMArena
end
localPlayer.Character.HumanoidRootPart.CFrame = SafeMArena
end   
})

------------------------------------------------------------

Tab2:AddButton({
Name = "TP to SafeBox (Default Arena)",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until localPlayer.Character:FindFirstChild("entered")
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = SafeMDefault
end
localPlayer.Character.HumanoidRootPart.CFrame = SafeMDefault
end   
})

------------------------------------------------------------

Tab2:AddButton({
Name = "TP to Plate",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until localPlayer.Character:FindFirstChild("entered")
task.wait()
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
task.wait()	
localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
end
localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
end   
})

----------------------------------------------

Tab2:AddButton({
Name = "TP to Rock (Arena)",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until localPlayer.Character:FindFirstChild("entered")
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
end
localPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
end
})

------------------------------------------------------

Tab2:AddButton({
Name = "TP to Moai(Tree Top)",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until localPlayer.Character:FindFirstChild("entered")
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(222, 22, 2)
end
localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(222, 22, 2)
end
})

--------------------------------------------------------

Tab2:AddButton({
Name = "TP to Slapple(Tree Top)",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until localPlayer.Character:FindFirstChild("entered")
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-431, 104, -32)
end
localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-431, 104, -32)
end
})

------------------///TAB 3///--------------------

local DGMODEL = Tab3:AddDropdown({
Name = "Ghost Mode(Lobby)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "GMODELflag",
Callback = function(GMODEL)

if GMODEL == "ON" then
	if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
	local gloveClickk = localPlayer.leaderstats.Glove.Value
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.2)
	ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	OrionLib.Flags["GMODELflag"]:Set("OFF")
    else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	OrionLib.Flags["GMODELflag"]:Set("OFF")
   end
end

end
})

------------------------------------------

local DGMODEA = Tab3:AddDropdown({
Name = "Ghost Mode(Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "GMODEAflag",
Callback = function(GMODEA)

if GMODEA == "ON" then
    if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
	local gloveClickk = localPlayer.leaderstats.Glove.Value
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.2)
	ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	repeat task.wait()
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until localPlayer.Character:FindFirstChild("entered")
	localPlayer.Character.Humanoid:UnequipTools()
	localPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
	OrionLib.Flags["GMODEAflag"]:Set("OFF")
    else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	OrionLib.Flags["GMODEAflag"]:Set("OFF")
   end
end

end
})

------------------------------------------

local DGMODED = Tab3:AddDropdown({
Name = "Ghost Mode(Default Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "GMODEDflag",
Callback = function(GMODED)

if GMODED == "ON" then
    if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
	local gloveClickk = localPlayer.leaderstats.Glove.Value
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.2)
	ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	repeat task.wait()
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until localPlayer.Character:FindFirstChild("entered")
	localPlayer.Character.Humanoid:UnequipTools()
	OrionLib.Flags["GMODEDflag"]:Set("OFF")
    else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	OrionLib.Flags["GMODEDflag"]:Set("OFF")
    end
end

end
})

------------------///TAB 4///--------------------

local DVOID = Tab4:AddDropdown({
Name = "Anti Void",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "VOIDflag",
Callback = function(Void)

if Void == "ON" then
    if not Voidd then
        jesus.CanCollide = true
        arenaVoid.CanCollide = true
        jesus.Transparency = .5
        arenaVoid.Transparency = .5
	    Voidd = true
	end
elseif Void == "OFF" then
    if Voidd then
        jesus.CanCollide = false
        arenaVoid.CanCollide = false
        jesus.Transparency = 1
        arenaVoid.Transparency = 1
        Voidd = false
	end
end

end    
})

-----------------------------------------------

local DCUBE = Tab4:AddDropdown({
Name = "Anti Death Cube",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "CUBEflag",
Callback = function(Cube)

if Cube == "ON" then
    if not Cubee then
	    if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
		    workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
		    Cubee = true
        end
    end
elseif Cube == "OFF" then
    if Cubee then
	    if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
	workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
	    Cubee = false
	    end
	end
end

end
})

------------------------------------------

local DBAR = Tab4:AddDropdown({
Name = "Anti Death Barrier",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BARflag",
Callback = function(Bar)

if Bar == "ON" then
    if not Barr then
	    if workspace:FindFirstChild("dedBarrier") and workspace:FindFirstChild("DEATHBARRIER") and workspace:FindFirstChild("DEATHBARRIER2") then
			workspace.DEATHBARRIER.CanTouch = false
			workspace.DEATHBARRIER2.CanTouch = false
			workspace.dedBarrier.CanTouch = false
			Barr = true
        end
    end
elseif Bar == "OFF" then
	if Barr then
	    if workspace:FindFirstChild("dedBarrier") and workspace:FindFirstChild("DEATHBARRIER") and workspace:FindFirstChild("DEATHBARRIER2") then
		     workspace.DEATHBARRIER.CanTouch = true
	         workspace.DEATHBARRIER2.CanTouch = true
		     workspace.dedBarrier.CanTouch = true
		     Barr = false
        end
	end
end

end
})

------------------------------------------

local DBRAZ = Tab4:AddDropdown({
Name = "Anti Brazil Portal",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BRAZflag",
Callback = function(Braz)

if Braz == "ON" then
    if not Brazz then
        for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
		    if v.Name == "Part" and v.ClassName == "Part" then
		        local bpart = v
				bpart.CanTouch = false
				bpart.CanCollide = false
		    end
	    end
	    for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
		    if v.Name == "portal" and v.ClassName == "Part" then
		        local bportal = v
				bportal.CanTouch = false
				bportal.CanCollide = false
		    end
	    end
	    Brazz = true
	end
elseif Braz == "OFF" then
    if Brazz then
        for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
		    if v.Name == "Part" and v.ClassName == "Part" then
		        local bpart = v
				bpart.CanTouch = true
				bpart.CanCollide = true
		    end
	    end
	    for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
		    if v.Name == "portal" and v.ClassName == "Part" then
		        local bportal = v
				bportal.CanTouch = true
				bportal.CanCollide = true
		    end
	    end
	    Brazz = false
    end
end

end
})

--------------------------------------------------

local DANTIZA = Tab4:AddDropdown({
Name = "Anti Za Hando",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "ANTIZAflag",
Callback = function(Antiza)

if Antiza == "ON" then
    if not Antizaa then
	    Antizaa = true
	end
elseif Antiza == "OFF" then
    if Antizaa then
	    Antizaa = false
	end
end

end    
})

-----------------------------------------------------------------

local DBUS = Tab4:AddDropdown({
Name = "Anti Bus",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BUSflag",
Callback = function(Bus)

if Bus == "ON" then
    if not Buss then
	    Buss = true
	end
elseif Bus == "OFF" then
    if Buss then
	    Buss = false
	end
end

end
})

----------------------------------------------------------------

local DWALL = Tab4:AddDropdown({
Name = "Anti Wall",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "WALLflag",
Callback = function(Wall)

if Wall == "ON" then
    if not Walll then
	    Walll = true
	end
elseif Wall == "OFF" then
    if Walll then
	    Walll = false
	end
end

end
})

------------------------------------------

local DREAPER = Tab4:AddDropdown({
Name = "Anti Reaper",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "REAPERflag",
Callback = function(Reaper)

if Reaper == "ON" then
    if not Reaperr then
	    Reaperr = true
	end
elseif Reaper == "OFF" then
    if Reaperr then
	    Reaperr = false
	end
end

end    
})

-----------------------------------------

local DMAIL = Tab4:AddDropdown({
Name = "Anti Screen Block",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "MAILflag",
Callback = function(Mail)

if Mail == "ON" then
    if not Maill then
	    Maill = true
	end
elseif Mail == "OFF" then
    if Maill then
	    Maill = false
	end
end

end    
})

---------------------------------------------

local DSTUN = Tab4:AddDropdown({
Name = "Anti Stun",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "STUNflag",
Callback = function(Stun)

if Stun == "ON" then
    if not Stunn then
	    Stunn = true
	end
elseif Stun == "OFF" then
    if Stunn then
	    Stunn = false
	end
end

end    
})

---------------------------------------

local DHROCK = Tab4:AddDropdown({
Name = "Anti ROCK",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "HROCKflag",
Callback = function(Hrock)

if Hrock == "ON" then
    if not Hrockk then
	    Hrockk = true
	end
elseif Hrock == "OFF" then
    if Hrockk then
	    Hrockk = false
	end
end

end
})

-------------------------------------

local DBUBBLE = Tab4:AddDropdown({
Name = "Anti Bubble",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BUBBLEflag",
Callback = function(Bubble)

if Bubble == "ON" then
    if not Bubblee then
	    Bubblee = true
	end
elseif Bubble == "OFF" then
    if Bubblee then
	    Bubblee = false
	end
end

end
})

-----------------------///TAB 5///--------------------------------

Tab5:AddButton({
Name = "Save Position",
Callback = function()
Savepos = localPlayer.Character.HumanoidRootPart.CFrame
end
})

------------------------------------------

local DLOCK = Tab5:AddDropdown({
Name = "Anchor Body to Save Position",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "LOCKflag",
Callback = function(Lock)

if Lock == "ON" then
    if not Lockk and Savepos ~= nil then
	    localPlayer.Character.HumanoidRootPart.CFrame = Savepos
	    task.wait(.5)
	    localPlayer.Character.HumanoidRootPart.Anchored = true
	    Lockk = true
	else
	    OrionLib:MakeNotification({
	    Name = "Notice..",
	    Content = "Get Position first",
	    Image = "rbxassetid://4483345998",
	    Time = 3
	    })
	    DLOCK:Set("OFF")
	end
elseif Lock == "OFF" then
	if Lockk then
	    localPlayer.Character.HumanoidRootPart.Anchored = false
	Lockk = false
	end
end

end    
})

-------------------------------------------------------


Tab5:AddButton({
Name = "GIANT WALL (Lobby)",
Callback = function()

local GUI = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

GUI.Name = "GUI"
GUI.Parent = localPlayer:WaitForChild("PlayerGui")

Button.Name = "Button"
Button.Parent = GUI
Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.5, 150, 0.5, 120)
Button.Size = UDim2.new(0, 60, 0, 60)
Button.Font = Enum.Font.SourceSans
Button.Text = "WALL"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 25
Button.Draggable = true

Button.MouseButton1Click:Connect(function()

if not PUSHER then
ReplicatedStorage.PusherWall:FireServer()
PUSHER = true
task.wait(6)
PUSHER = false
elseif PUSHER then
localPlayer.Character.Humanoid.Health = 0
task.wait(4)
PUSHER = false
end
end)

end
})

-----------------------///TAB 6///--------------------------------

local DASTOP = Tab6:AddDropdown({
Name = "Auto Stop (Nearby Player)",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "ASTOPflag",
Callback = function(Astop)

if Astop == "ON" then
    if not Astopp then
	    OrionLib:MakeNotification({
	    Name = "Anti Nearby Player Activated",
	    Content = "Farming will be paused upon nearby player detected",
	    Image = "rbxassetid://4483345998",
	    Time = 5
	    })
	    Astopp = true
	end
elseif Astop == "OFF" then
    if Astopp then
	    Astopp = false
	end
end

end
})

----------------------------------------------------------

local DADMIN = Tab6:AddDropdown({
Name = "Anti Admin",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "ADMINflag",
Callback = function(Admin)

if Admin == "ON" then
	if not Adminn then
	    OrionLib:MakeNotification({
	    Name = "Anti Admin Enabled",
	    Content = "You are Safe!",
	    Image = "rbxassetid://4483345998",
	    Time = 5
	    })
	    Adminn = true
	end
elseif Admin == "OFF" then
    if Adminn then
	    Adminn = false
	end
end

end
})

---------------------------------------------------------------

local DRNAME = Tab6:AddDropdown({
Name = "Remove Name",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "RNAMEflag",
Callback = function(Rname)

if Rname == "ON" then
    if not Rnamee then
	    OrionLib:MakeNotification({
	    Name = "Notice..",
	    Content = "Name is now Hidden..",
	    Image = "rbxassetid://4483345998",
	    Time = 5
	    })
	    Rnamee = true
	end
elseif Rname == "OFF" then
	if Rnamee then
	    Rnamee = false
	end
end

end
})



-----------------------///TAB 7///--------------------------------

local DWHITE = Tab7:AddDropdown({
Name = "WhiteScreen",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "WHITEflag",
Callback = function(White)

if White == "ON" then
	if not Whitee then
	game:GetService("RunService"):Set3dRenderingEnabled(false)
	setfpscap(30)
	Whitee = true
	end
elseif White == "OFF" then
	if Whitee then
	    game:GetService("RunService"):Set3dRenderingEnabled(true)
	    setfpscap(60)
	    Whitee = false
	end
end

end    
})

-----------------------------------------

Tab7:AddButton({
Name = "RESET ALL",
Callback = function()

	PAUSE = false
	ACTIVE = false
	PUSHER = false
	
	DAS:Set("OFF")
	DKA:Set("OFF")
	DPFARM:Set("OFF")
    DGFARM:Set("OFF")
    DBOB:Set("OFF")
    DASFARM:Set("OFF")
    DSFARM:Set("OFF")
    DVOID:Set("OFF")
    DCUBE:Set("OFF")
    DBAR:Set("OFF")
    DBRAZ:Set("OFF")
    DANTIZA:Set("OFF")
    DBUS:Set("OFF")
    DWALL:Set("OFF")
    DREAPER:Set("OFF")
    DMAIL:Set("OFF")
    DSTUN:Set("OFF")
    DHROCK:Set("OFF")
    DBUBBLE:Set("OFF")
    DLOCK:Set("OFF")
    DRNAME:Set("OFF")
    DWHITE:Set("OFF")

	localPlayer.Character.Humanoid.Health = 0
	
end    
})

-------------------------------------------

local DRJ = Tab7:AddDropdown({
Name = "Rejoin Server",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "RJflag",
Callback = function(RJ)

if RJ == "ON" then
OrionLib:MakeNotification({
	Name = "Please Wait.....",
	Content = "Rejoining Server",
	Image = "rbxassetid://4483345998",
	Time = 10
	})
TPService:Teleport(PlaceID, localPlayer)
end

end
})

-----------------------------------------

local DLOWEST = Tab7:AddDropdown({
Name = "Join Lowest Player Server",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "LOWESTflag",
Callback = function(LOWEST)

if LOWEST == "ON" then

OrionLib:MakeNotification({
Name = "Please Wait.....",
Content = "Finding Low Player Server",
Image = "rbxassetid://4483345998",
Time = 20
})

local pageLimit = math.huge
local HttpService = game:GetService('HttpService')
local nextCursor, serverId
local minimum = math.huge
local Page = 0
repeat
    local Url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    if (nextCursor) then Url = Url .. "&cursor=" .. nextCursor end
    local Servers = HttpService:JSONDecode(game:HttpGet(Url))
    if (Servers) then
        nextCursor = Servers.nextPageCursor or nil
        Page = Page + 1
        for _,v in pairs(Servers.data) do
            v.playing = v.playing or math.huge
            v.id = v.id or ''

            if v.id ~= game.JobId and v.playing <= minimum then
                minimum = v.playing
                serverId = v.id
            end
        end
    end
until (not nextCursor) or (Page >= pageLimit)

if (serverId) then
    warn("Teleporting to: " .. tostring(serverId) .. ", Player Count: " .. minimum)
    TPService:TeleportToPlaceInstance(PlaceID, serverId)
end

end

end    
})

-------------------------------------

Tab7:AddButton({
	Name = "Switch to Auto Server Hop Farm",
	Callback = function()
    OrionLib:Destroy()
    task.wait(1.5)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/shanison29/Sb/main/sbSFarmv1.lua'))()
  	end    
})


Tab7:AddButton({
	Name = "EXIT GUI",
	Callback = function()
    OrionLib:Destroy()
  	end    
})



-----------------------------------------------------------------
------------------------Farming----------------------------

coroutine.wrap(function()
while task.wait() do

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local RootPart = character:FindFirstChild("HumanoidRootPart")
local Humanoid = character:FindFirstChild("Humanoid")
local Torso = character:FindFirstChild("Torso")
local Head = character:FindFirstChild("Head")
local Entered = character:FindFirstChild("entered")

--------------------------

if Pfarmm then
    if not PAUSE then
      if character ~= nil and Humanoid ~= nil and Entered and Torso.Transparency == 0 then
            Humanoid.Health = 0
      elseif character ~= nil and Humanoid ~= nil and not Entered then
            workspace.DEATHBARRIER.CanTouch = false
            workspace.DEATHBARRIER2.CanTouch = false
            workspace.dedBarrier.CanTouch = false
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until localPlayer.Character:FindFirstChild("entered")
			Humanoid:UnequipTools()
			RootPart.CFrame = SafeMArena
      elseif Entered and character ~= nil and Humanoid ~= nil and Torso.Transparency == 1 then
               for i, v in next, players:GetPlayers() do
                      if v ~= localPlayer and v.Character and not v.Character:FindFirstChild("isParticipating") and v.Character:FindFirstChild("Torso") and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("entered") and v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Ragdolled.Value == false then
                                  RootPart.CFrame = v.Character:FindFirstChild("Right Leg").CFrame * CFrame.new(6,-5,6)
                                  task.wait()
                                  Humanoid.PlatformStand = true
                                  task.wait(.20)
                                  shared.gloveHits[getGlove()]:FireServer(v.Character:FindFirstChild("Torso"))
                                   task.wait(.20)
                                  RootPart.CFrame = SafeMArena
                                  task.wait(randomw)
                          end
                  end
       end
    end
end

-------------------------------

if MainA then
	if not PAUSE then
		if not ACTIVE and Entered and character ~= nil and Humanoid ~= nil and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and character ~= nil and Humanoid ~= nil then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until localPlayer.Character:FindFirstChild("entered")
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeMArena
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and character ~= nil and Humanoid ~= nil then
		    ACTIVE = true
			repeat
			RootPart.CFrame = SafeMArena
			task.wait(1)
			until Humanoid.Died
		end
	else
	ACTIVE = false
	end
end

-------------------------------

if AltA then
	if not PAUSE then
		if not ACTIVE and Entered and character ~= nil and Humanoid ~= nil and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and character ~= nil and Humanoid ~= nil then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until localPlayer.Character:FindFirstChild("entered")
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeAArena
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and character ~= nil and Humanoid ~= nil then
		    ACTIVE = true
			repeat
			RootPart.CFrame = SafeAArena
			task.wait(0.3)
			until Humanoid.Died
		end
	else
	ACTIVE = false
	end
end

---------------------------

if MainD then
	if not PAUSE then
		if not ACTIVE and Entered and character ~= nil and Humanoid ~= nil and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and character ~= nil and Humanoid ~= nil then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until localPlayer.Character:FindFirstChild("entered")
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeMDefault
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and character ~= nil and Humanoid ~= nil then
		    ACTIVE = true
			repeat
			RootPart.CFrame = SafeMDefault
			task.wait(1)
			until Humanoid.Died
		end
	else
	ACTIVE = false
	end
end

------------------------

if AltD then
	if not PAUSE then
		if not ACTIVE and Entered and character ~= nil and Humanoid ~= nil and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and character ~= nil and Humanoid ~= nil then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until localPlayer.Character:FindFirstChild("entered")
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeADefault
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and character ~= nil and Humanoid ~= nil then
		    ACTIVE = true
			repeat
			RootPart.CFrame = SafeADefault
			task.wait(0.3)
			until Humanoid.Died
		end
	else
	ACTIVE = false
	end
end

------------------------------

if Bobb then
local TargetPosition = Vector3.new(-565, 328, 3)
local TargetPart = nil
	if not Entered and character ~= nil and Humanoid ~= nil then
	repeat task.wait(2)
			Humanoid:MoveTo(TargetPosition, TargetPart)
	until localPlayer.Character:FindFirstChild("entered")
			vim:SendKeyEvent(true, "E", false, game)
			task.wait()
			vim:SendKeyEvent(false, "E", false, game)
			task.wait(1.2)
			Humanoid.Health = 0
	end
end


----------------------------------

if Sfarmm then
	if Entered then
		for i,v in next, workspace.Arena.island5.Slapples:GetDescendants() do
		    if v.ClassName == "TouchTransmitter" then
		    pcall(function()
			firetouchinterest(Head, v.Parent, 0)
			firetouchinterest(Head, v.Parent, 1)
			task.wait(0.05)
			end)
			end
		end
	end
end

wait()
end
end)()




----------------------------------------
-----------------Anti-----------------

task.spawn(function()
while task.wait() do

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local Humanoid = character:FindFirstChild("Humanoid")
local RootPart = character:FindFirstChild("HumanoidRootPart")
local Torso = character:FindFirstChild("Torso")
local Head = character:FindFirstChild("Head")
local Entered = character:FindFirstChild("entered")


if Entered and character ~= nil and Humanoid ~= nil then

if Antizaa then
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.ClassName == "Part" and v.Name == "Part" then
			v:Destroy()
		end
	end
end

if Buss then
	for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
		if p.Name == "BusModel" then
			p.CanCollide = false
			p.CanTouch = false
			p.Transparency = 0.8
		end
	end
end

if Walll then
	for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
		if p.Name == "wall" then
			p.CanCollide = false
			p.CanTouch = false
			p.Transparency = 0.8
		end
	end
end

if Reaperr then
for i,v in pairs(character:GetChildren()) do
		if v.Name == "DeathMark" then
			ReplicatedStorage.ReaperGone:FireServer(character.DeathMark)
			game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
		end 
	end
end

if Maill then
    for _,v in pairs(localPlayer.PlayerGui:GetChildren()) do
	    if v.Name == "VineThudImageScreenGUI" or v.Name == "MailPopup" or v.Name == "MittenBlind" or v.Name == "SquidInk" then 
			v:Destroy()
		end
	end
	if game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect") then
	game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect"):Destroy()
	end
end

if Stunn then
    if game.Workspace:FindFirstChild("Shockwave") then
		Humanoid.PlatformStand = false
	end
end

if Hrockk then
    for _,v in pairs(players:GetChildren()) do
		if v.Character:FindFirstChild("rock") then
				v.Character:FindFirstChild("rock").CanTouch = false
				v.Character:FindFirstChild("rock").CanQuery = false
		end
    end
end

if Bubblee then
    for i,v in pairs(workspace:GetChildren()) do
		if v.Name == "BubbleObject" then
			if v:FindFirstChild("Weld") then
				v:FindFirstChild("Weld"):Destroy()
			end
		end
    end
end

end

task.wait()
end
end)

-------------------------------
---------Other-------------

task.spawn(function()
while task.wait() do

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local Humanoid = character:FindFirstChild("Humanoid")
local RootPart = character:FindFirstChild("HumanoidRootPart")
local Torso = character:FindFirstChild("Torso")
local Head = character:FindFirstChild("Head")
local Entered = character:FindFirstChild("entered")

----------Hide Name-------

if Rnamee and not PAUSE then
	if Head:FindFirstChild("Nametag") then
		Head:FindFirstChild("Nametag"):Destroy()
	end
end

-----------Admin--------------

if Adminn then
    players.PlayerAdded:Connect(function(Plra)
         if Plra:GetRankInGroup(9950771) and 2 <= Plra:GetRankInGroup(9950771) then
            PAUSE = true
            localPlayer:Kick("Admin/High Rank Player Detected")
         end
    end)
end

---------Sound Alert------------

if PAUSE then
	UserSettings():GetService'UserGameSettings'.MasterVolume = 5
	Sound:Play()
	task.wait(SoundDelay)
end

-------------Auto Reset------------

if ALIVE and PAUSE and character ~= nil and Humanoid ~= nil and Entered then
		Humanoid.Health = 0
end

-------------Auto Pause------------

if Astopp and ACTIVE and Entered and character ~= nil and Humanoid ~= nil then
	for i,v in pairs(players:GetPlayers()) do
			if v ~= localPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and not table.find(Myself, v.Name) then
				if (v.Character.HumanoidRootPart.Position - RootPart.Position).Magnitude <= 90 then
					OrionLib:MakeNotification({
					Name = "Alert!!!",
					Content = "Nearby Player DETECTED within 90 Distance. Farming Paused for 60 Seconds",
					Image = "rbxassetid://4483345998",
					Time = 49
					})
					PAUSE = true
					task.wait(50)
					OrionLib:MakeNotification({
					Name = "Alert!!!",
					Content = "Resuming in 10 Seconds",
					Image = "rbxassetid://4483345998",
					Time = 9
					})
					task.wait(10)
					PAUSE = false
				end
			end
	end
end

---------Number of Players to Start-----------

if Pfarmm then
    if playernum < numtofarm then
        if not PAUSE then
            PAUSE = true
        end
    else
        if PAUSE then
            PAUSE = false
        end
    end
end

task.wait()
end
end)


-------------------------------
--------Teleport----------

local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false

local File = pcall(function()
AllIDs = game:GetService('HttpService'):JSONDecode(readfile("SBServers.json"))
end)

if not File then
    table.insert(AllIDs, actualHour)
    writefile("SBServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end

function TPReturner()

    local Site
    
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end

    local ID = ""
    
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    
    local num = 0
    
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("SBServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                task.wait()
                pcall(function()
                    writefile("SBServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))      
              task.wait()
                    TPService:TeleportToPlaceInstance(PlaceID, ID, localPlayer)
                end)
                task.wait(3)
            end
        end
    end
end

function Teleportslapple()
OrionLib:MakeNotification({
	Name = "Please Wait",
	Content = "Cooldown before teleport to avoid Server Hop IP ban",
	Image = "rbxassetid://4483345998",
	Time = 18
	})
task.wait(20)
OrionLib:MakeNotification({
	Name = "Teleporting",
	Content = "Please Wait....",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
	task.wait(1)
    while task.wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

function Teleport()
OrionLib:MakeNotification({
	Name = "Teleporting",
	Content = "Please Wait....",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
	task.wait(2)
    while task.wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

--------------------------------
--------------------------------
task.wait(2)
OrionLib:Init()