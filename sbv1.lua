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
                    Name = "Farmer",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
				
				local Tab1 = Window:MakeTab({
                    Name = "Slapper",
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
                    Name = "Anti",
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
local RootPart = character:WaitForChild("HumanoidRootPart")
local Humanoid = character:WaitForChild("Humanoid")
local Torso = character:WaitForChild("Torso")
local Head = character:WaitForChild("Head")
local Entered = character:FindFirstChild("entered")

--Aura
local MaxDistance = 20

--Alert
local SoundDelay = 2
local Sound = Instance.new('Sound', game:GetService'SoundService')
Sound.SoundId = 'rbxassetid://4590662766'
Sound.Volume = 1

--Whitelist nearby player
local Myself = {
"TrazerGamingYT",
"PROlegend_98",
"xLichtxBachx"
}

--Player Counter
local playernum = 0
local numtofarm = 9

--Save and lock Position
local Savepos

--Ghost mode safe spots
local SafeMArena = CFrame.new(-1504, 133, -1506)
local SafeAArena = CFrame.new(-1504, 133, -1510)
local SafeMDefault = CFrame.new(119, 518, -21)
local SafeADefault = CFrame.new(119, 518, -26)

local Sfarmdone = false
local Pause = false
local ACTIVE = false

local ASS = false
local KAA = false

local BOBB = false
local SLAPPLEE = false
local SLAPPLEEEE = false
local MAINNG = false
local ALTTG = false
local MAINNNG = false
local ALTTTG = false
local PFARM = false

local NAMETT = false
local ASTOPP = false
local ADMINN = false

local GMODEL = "OFF" 
local GMODEA = "OFF" 
local GMODED = "OFF" 
local RJ = "OFF" 
local LOWEST = "OFF" 

local Voidd = "OFF"
local CUBE = "OFF"
local BAR = "OFF"
local BRA = "OFF"
local AntiZa = "OFF"
local BUSSS = "OFF"
local PUSHH = "OFF"
local Reaper = "OFF"
local Amail = "OFF"
local Astun = "OFF"
local Hrock = "OFF"

local Abubble = "OFF"
local Lockpos = "OFF"

local Save = "OFF"

local wall = false
local zahando = false

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
      TPService:Teleport(PlaceID)
    end
end)

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

queueteleport([[
if game.PlaceId == 6403373529 or game.PlaceId == 9015014224 then
loadstring(game:HttpGet('https://raw.githubusercontent.com/shanison29/Sb/main/sbv1.lua'))()
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

-----------------Player Died------------------

localPlayer.Character.Humanoid.Died:Connect(function()
ACTIVE = false
wall = false
localPlayer.Character.HumanoidRootPart.Anchored = false
end)

------------------///TAB 1///--------------------

Tab1:AddDropdown({
Name = "Auto Slap (Need Glove Equipped)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "ASSt",
Callback = function(AS)

if AS == "ON" then
	ASS = true
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Auto Slap Enabled..",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
elseif AS == "OFF" then
	ASS = false
end

while ASS and task.wait() do
	if not Pause and localPlayer.Character:FindFirstChild("entered") then
		virtualUser:CaptureController()
		virtualUser:ClickButton1(Vector2.new(120,120))
	end
task.wait()
end

end
})

------------------------------------------

Tab1:AddDropdown({
Name = "Slap Aura",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "KAAt",
Callback = function(KA)

if KA == "ON" then
	KAA = true
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Slap Aura Enabled..",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
elseif KA == "OFF" then
	KAA = false
end

while KAA and task.wait() do
	if not Pause and localPlayer.Character:FindFirstChild("entered") and  localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") then

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

Tab1:AddDropdown({
Name = "Slap Aura Range",
Default = 20,
Options = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 100, 500, 1000},
Callback = function(Dist)
MaxDistance = Dist
end    
})

---------------------------------------------

Tab:AddDropdown({
Name = "Player Farm (Ghost)",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "PFARMt",
Callback = function(PF)

if PF == "ON" then
	PFARM = true

elseif PF == "OFF" then
	PFARM = false
end

end
})

----------------------------------------------

Tab:AddDropdown({
Name = "ALT Farm (Ghost)",
Default = "OFF",
Options = {"OFF", "MAIN ARENA", "ALT ARENA", "MAIN DEFAULT", "ALT DEFAULT"},
Flag = "GFARMt",
Callback = function(GFARM)

if GFARM == "MAIN ARENA" then
	MAINNG = true
	ALTTG = false
	MAINNNG = false
	ALTTTG = false
elseif GFARM == "ALT ARENA" then
	MAINNG = false
	ALTTG = true
	MAINNNG = false
	ALTTTG = false
elseif GFARM == "MAIN DEFAULT" then
	MAINNG = false
	ALTTG = false
	MAINNNG = true
	ALTTTG = false
elseif GFARM == "ALT DEFAULT" then
	MAINNG = false
	ALTTG = false
	MAINNNG = false
	ALTTTG = true
elseif GFARM == "OFF" then
	MAINNG = false
	ALTTG = false
	MAINNNG = false
	ALTTTG = false
end

end
})

-------------------------------------------------

Tab:AddDropdown({
Name = "BOB Farm (Replica)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BOBBt",
Callback = function(BOB)

if BOB == "ON" then
	localPlayer.Character.Humanoid.Health = 0
	BOBB = true
elseif BOB == "OFF" then
	BOBB = false
end

end
})

--------------------------------------------------

Tab:AddDropdown({
Name = "Slapple Farm",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "SLAPPLEEt",
Callback = function(SLAPPLE)

if SLAPPLE == "ON" then
	SLAPPLEE = true
elseif SLAPPLE == "OFF" then
	SLAPPLEE = false
end

while SLAPPLEE and task.wait() do
	if localPlayer.Character:FindFirstChild("entered") then
		for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do
			if Instance.ClassName == "TouchTransmitter" then
			firetouchinterest(localPlayer.Character.Head, Instance.Parent, 0)
			firetouchinterest(localPlayer.Character.Head, Instance.Parent, 1)
			end
		end
	end
task.wait()
end

end
})

--------------------------------------

Tab:AddDropdown({
Name = "Auto Slapple Farm / Hopper",
Default = "OFF",
Save = true,
Options = {"OFF", "ON"},
Flag = "SLAPPLEEEEt",
Callback = function(SLAPPLEEE)

if SLAPPLEEE == "ON" then
	SLAPPLEEEE = true
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Auto Slapple Farm Enabled..",
	Image = "rbxassetid://4483345998",
	Time = 30
	})
elseif SLAPPLEEE == "OFF" then
	SLAPPLEEEE = false
end

end
})


------------------///TAB 2///--------------------

Tab2:AddButton({
Name = "TP to SafeBox (Arena)",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)
end
localPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)
end   
})

------------------------------------------------------------

Tab2:AddButton({
Name = "TP to SafeBox (Default Arena)",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot2.CFrame * CFrame.new(0,50,0)
end
localPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot2.CFrame * CFrame.new(0,50,0)
end   
})

------------------------------------------------------------

Tab2:AddButton({
Name = "TP to Plate",
Callback = function()

if not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:WaitForChild("HumanoidRootPart") then
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
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
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
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
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
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
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
task.wait()
localPlayer.Character.Humanoid:UnequipTools()
task.wait()
localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-431, 104, -32)
end
localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-431, 104, -32)
end
})

------------------///TAB 3///--------------------

Tab3:AddDropdown({
Name = "Ghost Mode(Lobby)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "GMODELt",
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
	OrionLib.Flags["GMODELt"]:Set("OFF")
    else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	OrionLib.Flags["GMODELt"]:Set("OFF")
   end
end

end
})

------------------------------------------

Tab3:AddDropdown({
Name = "Ghost Mode(Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "GMODEAt",
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
	repeat task.wait(.5)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until localPlayer.Character:WaitForChild("isInArena").Value == true
	localPlayer.Character.Humanoid:UnequipTools()
	localPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
	OrionLib.Flags["GMODEAt"]:Set("OFF")
    else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	OrionLib.Flags["GMODEAt"]:Set("OFF")
   end
end

end
})

------------------------------------------

Tab3:AddDropdown({
Name = "Ghost Mode(Default Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "GMODEDt",
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
	repeat task.wait(.5)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until localPlayer.Character:WaitForChild("isInArena").Value == true
	localPlayer.Character.Humanoid:UnequipTools()
	OrionLib.Flags["GMODEDt"]:Set("OFF")
    else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	OrionLib.Flags["GMODEDt"]:Set("OFF")
    end
end

end
})

------------------///TAB 4///--------------------

Tab4:AddDropdown({
Name = "Anti Void",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Voiddt",
Callback = function(Vd)
Voidd = Vd

if Voidd == "ON" then
jesus.CanCollide = true
jesus.Transparency = .5
arenaVoid.Transparency = .5
else
jesus.CanCollide = false
jesus.Transparency = 1
arenaVoid.Transparency = 1
end

end    
})

-----------------------------------------------

Tab4:AddDropdown({
Name = "Anti Death Cube",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "CUBEEt",
Callback = function(CUBE)

if CUBE == "ON" then
	CUBEE = true
elseif CUBE == "OFF" then
	CUBEE = false
end

if CUBEE then
	if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
		workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
	end
else
	if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
	workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
	end
end

end
})

------------------------------------------

Tab4:AddDropdown({
Name = "Anti Death Barrier",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BARRt",
Callback = function(BAR)

if BAR == "ON" then
	BARR = true
elseif BAR == "OFF" then
	BARR = false
end

if BARR then
   if workspace:FindFirstChild("dedBarrier") and workspace:FindFirstChild("DEATHBARRIER") and workspace:FindFirstChild("DEATHBARRIER2") then
			workspace.DEATHBARRIER.CanTouch = false
			workspace.DEATHBARRIER2.CanTouch = false
			workspace.dedBarrier.CanTouch = false
   end
else
   if workspace:FindFirstChild("dedBarrier") and workspace:FindFirstChild("DEATHBARRIER") and workspace:FindFirstChild("DEATHBARRIER2") then
		     workspace.DEATHBARRIER.CanTouch = true
	         workspace.DEATHBARRIER2.CanTouch = true
		     workspace.dedBarrier.CanTouch = true
   end
end

end
})

------------------------------------------

Tab4:AddDropdown({
Name = "Anti Brazil Portal",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BRAZt",
Callback = function(BRA)

if BRA == "ON" then
	BRAZ = true
elseif BRA == "OFF" then
	BRAZ = false
end

if BRAZ then
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
else
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
end

end
})

--------------------------------------------------

Tab4:AddDropdown({
Name = "Anti Za Hando",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "AntiZat",
Callback = function(Vza)
AntiZa = Vza

while AntiZa == "ON" and task.wait() do
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.ClassName == "Part" and v.Name == "Part" then
			v:Destroy()
		end
	end
task.wait()
end

end    
})

-----------------------------------------------------------------

Tab4:AddDropdown({
Name = "Anti Bus",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BUSSSt",
Callback = function(Vbus)
BUSSS = Vbus

while BUSSS == "ON" and task.wait() do
	for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
		if p.Name == "BusModel" then
			p.CanCollide = false;
			p.CanTouch = false;
			p.Transparency = 0.8;
		end
	end
task.wait()
end

end
})

----------------------------------------------------------------

Tab4:AddDropdown({
Name = "Anti Wall",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "PUSHHt",
Callback = function(Vwall)
PUSHH = Vwall

while PUSHH == "ON" and task.wait() do
	for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
		if p.Name == "wall" then
			p.CanCollide = false;
			p.CanTouch = false;
			p.Transparency = 0.8;
		end
	end
task.wait()
end

end
})

------------------------------------------

Tab4:AddDropdown({
Name = "Anti Reaper",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Reapert",
Callback = function(Vreap)
Reaper = Vreap

while Reaper == "ON" and task.wait() do
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "DeathMark" then
			game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
			game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
		end 
	end
task.wait()
end

end    
})

-----------------------------------------

Tab4:AddDropdown({
Name = "Anti Screen Block",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Amailt",
Callback = function(Vblock)
Amail = Vblock

while Amail == "ON" and task.wait() do
	for _,v in pairs(LocalPlayer.PlayerGui:GetChildren()) do
		if v.Name == "VineThudImageScreenGUI" or v.Name == "MailPopup" or v.Name == "MittenBlind" or v.Name == "SquidInk" then 
			v:Destroy();
		end
	end
	if game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect") then
	game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect"):Destroy();
	end
task.wait()
end

end    
})

---------------------------------------------

Tab4:AddDropdown({
Name = "Anti Stun",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Astunt",
Callback = function(Vstun)
Astun = Vstun

while Astun == "ON" and task.wait() do
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and  game.Workspace:FindFirstChild("Shockwave") then
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	end
task.wait()
end

end    
})

---------------------------------------

Tab4:AddDropdown({
Name = "Anti ROCK",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Hrockt",
Callback = function(Vrock)
Hrock = Vrock

while Hrock == "ON" and task.wait() do
		for _,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Character:FindFirstChild("rock") then
				v.Character:FindFirstChild("rock").CanTouch = false
				v.Character:FindFirstChild("rock").CanQuery = false
			end
		end
end

end
})

-------------------------------------

Tab4:AddDropdown({
Name = "Anti Bubble",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Abubblet",
Callback = function(Vbubble)
Abubble = Vbubble

while Abubble == "ON" and task.wait() do
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name == "BubbleObject" then
			if v:FindFirstChild("Weld") then
				v:FindFirstChild("Weld"):Destroy()
			end
		end
	end
task.wait()
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

Tab5:AddDropdown({
Name = "Anchor Body to Save Position",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Lockpost",
Callback = function(Vlock)
Lockpos = Vlock

if Lockpos == "ON" then
   if Savepos ~= nil then
	localPlayer.Character.HumanoidRootPart.CFrame = Savepos
	task.wait(.5)
	localPlayer.Character.HumanoidRootPart.Anchored = true
	else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Get Position first",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	end
elseif Lockpos == "OFF" then
	localPlayer.Character.HumanoidRootPart.Anchored = false
end

end    
})

-------------------------------------------------------

Tab5:AddDropdown({
Name = "Player List",
Default = "...",
Options = {},
Flag = "Playerlistt",
Callback = function(Value)
print(OrionLib.Flags["Playerlistt"].Value)
plrname = Value
end    
})

--------------------------------------------

Tab5:AddButton({
Name = "BRAZIL - za hando",
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
Button.Text = "BRAZIL"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 25
Button.Draggable = true


Button.MouseButton1Click:Connect(function()
if plrname ~= nil then
    OrionLib:MakeNotification({
	Name = "Brazil Kick...",
	Content = "Targeting --- "..plrname.." ---",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
for i,v in pairs(players:GetPlayers()) do
      if v ~= localPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") then
            if v.Name == plrname then
                trgtpos = v.Character.HumanoidRootPart.Position
                localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(trgtpos)
				task.wait(0.7)
				ReplicatedStorage.Erase:FireServer()
				localPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(1022,213.8,1498)
				task.wait(.13)
				localPlayer.Character.HumanoidRootPart.Anchored = true
				task.wait(3.5)
				localPlayer.Character.Humanoid.Health = 0
             end
       end
end
end
end)

end
})

-------------------------------------------------

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
if wall == false then
ReplicatedStorage.PusherWall:FireServer()
wall = true
task.wait(6)
wall = false
end

if wall == true then
localPlayer.Character.Humanoid.Health = 0
task.wait(4)
wall = false
end
end)

end
})

-----------------------///TAB 6///--------------------------------

Tab6:AddDropdown({
Name = "Auto Stop (Nearby Player)",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "ASTOPPt",
Callback = function(ASTOP)

if ASTOP == "ON" then
	ASTOPP = true
	OrionLib:MakeNotification({
	Name = "Anti Nearby Player Activated",
	Content = "Farming will be paused upon nearby player detected",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
elseif ASTOP == "OFF" then
	ASTOPP = false
end

end
})


spawn(function()
while task.wait() do

	if ASTOPP and ACTIVE and localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") then
		for i,v in pairs(players:GetPlayers()) do
			if v ~= localPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and not table.find(Myself, v.Name) then
				if (v.Character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
					--localPlayer:Kick("Someone's Nearby")
					OrionLib:MakeNotification({
					Name = "Alert!!!",
					Content = "Nearby Player DETECTED within 100 Distance. Farming Paused for 60 Seconds",
					Image = "rbxassetid://4483345998",
					Time = 49
					})
					Pause = true
					task.wait(50)
					OrionLib:MakeNotification({
					Name = "Alert!!!",
					Content = "Resuming in 10 Seconds",
					Image = "rbxassetid://4483345998",
					Time = 9
					})
					task.wait(10)
					Pause = false
				end
			end
		end
	end
end

end)

---------------------------

spawn(function()
while task.wait() do

if ASTOPP and Pause and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("entered") then
			--character.HumanoidRootPart.Anchored = false
			localPlayer.Character.Humanoid.Health = 0
end
if Sfarmdone and localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") then 
             task.wait(3)
             localPlayer.Character.Humanoid.Health = 0
end
if Sfarmdone and not localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
               task.wait(2)
              localPlayer.Character.HumanoidRootPart.Anchored = true
              Teleportslapple()
end

task.wait()
end
end)

-----SOUND ALERT-----

spawn(function()
while task.wait() do
	if ASTOPP or ADMINN then
		if Pause then
		UserSettings():GetService'UserGameSettings'.MasterVolume = 5
		Sound:Play()
		task.wait(SoundDelay)
		end
	end
end
end)

----------------------------------------------------------

Tab6:AddDropdown({
Name = "Anti Admin",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "ADMINt",
Callback = function(ADMIN)

if ADMIN == "ON" then
	ADMINN = true
	OrionLib:MakeNotification({
	Name = "Anti Admin Enabled",
	Content = "You are Safe!",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
elseif ADMIN == "OFF" then
	ADMINN = false
end

end
})

spawn(function()

while task.wait() do
	if ADMINN then
      players.PlayerAdded:Connect(function(Plra)
         if Plra:GetRankInGroup(9950771) and 2 <= Plra:GetRankInGroup(9950771) then
            Pause = true
            localPlayer:Kick("Admin/High Rank Player Detected")
         end
      end)
	end
end

end)

---------------------------------------------------------------

Tab6:AddDropdown({
Name = "Remove Name",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Rname",
Callback = function(Antinametag)

if Antinametag == "ON" then
	NAMETT = true
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Name is now Hidden..",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
elseif Antinametag == "OFF" then
	if NAMETT then
	NAMETT = false
	localPlayer.Character.Humanoid.Health = 0
	end
end

end
})

spawn(function()

while task.wait() do
	if NAMETT then
		if not Pause then
			if localPlayer.Character:WaitForChild("Head"):FindFirstChild("Nametag") then
				localPlayer.Character:FindFirstChild("Head"):FindFirstChild("Nametag"):Destroy()
			end
		end
	end
end

end)

-----------------------///TAB 7///--------------------------------

Tab7:AddDropdown({
Name = "WhiteScreen",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "WHITEt",
Callback = function(Vsave)

Save = Vsave

if Save == "ON" then
	game:GetService("RunService"):Set3dRenderingEnabled(false)
	setfpscap(30)
else
	game:GetService("RunService"):Set3dRenderingEnabled(true)
	setfpscap(60)
end

end    
})

-----------------------------------------

Tab7:AddButton({
Name = "RESET ALL",
Callback = function()

	Pause = false
	ACTIVE = false
	OrionLib.Flags["PFARMt"]:Set("OFF")
	OrionLib.Flags["GFARMt"]:Set("OFF")
	
	OrionLib.Flags["ASSt"]:Set("OFF")
	OrionLib.Flags["KAAt"]:Set("OFF")
	OrionLib.Flags["BOBBt"]:Set("OFF")
	OrionLib.Flags["SLAPPLEEt"]:Set("OFF")
	
	OrionLib.Flags["Voiddt"]:Set("OFF")
	OrionLib.Flags["CUBEEt"]:Set("OFF")
	OrionLib.Flags["BARRt"]:Set("OFF")
	OrionLib.Flags["BRAZt"]:Set("OFF")
	OrionLib.Flags["AntiZat"]:Set("OFF")
	OrionLib.Flags["BUSSSt"]:Set("OFF")
	OrionLib.Flags["PUSHHt"]:Set("OFF")
	OrionLib.Flags["Reapert"]:Set("OFF")
	OrionLib.Flags["Amailt"]:Set("OFF")
	OrionLib.Flags["Astunt"]:Set("OFF")
	OrionLib.Flags["Hrockt"]:Set("OFF")
	OrionLib.Flags["Abubblet"]:Set("OFF")
	
	OrionLib.Flags["Rname"]:Set("OFF")
	OrionLib.Flags["WHITEt"]:Set("OFF")
	OrionLib.Flags["Lockpost"]:Set("OFF")

	wall = false
	localPlayer.Character.HumanoidRootPart.Anchored = false
	localPlayer.Character.Humanoid.Health = 0
	
end    
})

-------------------------------------------

Tab7:AddDropdown({
Name = "Rejoin Server",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "RJt",
Callback = function(RJ)

if RJ == "ON" then
OrionLib:MakeNotification({
	Name = "Please Wait.....",
	Content = "Rejoining Server",
	Image = "rbxassetid://4483345998",
	Time = 10
	})
TPService:Teleport(PlaceID, localPlayer)
OrionLib.Flags["RJt"]:Set("Please Wait...")
end

end
})

-----------------------------------------

Tab7:AddDropdown({
Name = "Join Lowest Player Server",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "LOWESTt",
Callback = function(LOWEST)

if LOWEST == "ON" then
    OrionLib:MakeNotification({
	Name = "Please Wait.....",
	Content = "Finding Low Player Server",
	Image = "rbxassetid://4483345998",
	Time = 20
	})
	OrionLib.Flags["LOWESTt"]:Set("Please Wait...")
local pageLimit = math.huge -- Set to math.huge to explore all pages

local HttpService = game:GetService('HttpService');

local nextCursor, serverId;
local minimum = math.huge;

local Page = 0;
repeat
    local Url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100";
    if (nextCursor) then Url = Url .. "&cursor=" .. nextCursor end;

    local Servers = HttpService:JSONDecode(game:HttpGet(Url));
    if (Servers) then
        nextCursor = Servers.nextPageCursor or nil;
        Page = Page + 1;
        for _,v in pairs(Servers.data) do
            v.playing = v.playing or math.huge;
            v.id = v.id or '';

            if v.id ~= game.JobId and v.playing <= minimum then
                minimum = v.playing;
                serverId = v.id;
            end
        end
    end
until (not nextCursor) or (Page >= pageLimit);

if (serverId) then
    warn("Teleporting to: " .. tostring(serverId) .. ", Player Count: " .. minimum);
    TPService:TeleportToPlaceInstance(PlaceID, serverId);
end

end

end    
})

-------------------------------------

Tab7:AddButton({
	Name = "EXIT GUI",
	Callback = function()
    OrionLib:Destroy()
  	end    
})

-------------------------------------------------------------------------

spawn(function()
while task.wait() do

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local RootPart = character:WaitForChild("HumanoidRootPart")
local Humanoid = character:WaitForChild("Humanoid")
local Torso = character:WaitForChild("Torso")
local Head = character:WaitForChild("Head")
local Entered = character:FindFirstChild("entered")

--------------------------

if PFARM then
if playernum >= numtofarm then
      if Entered and Torso.Transparency == 0 then
            Humanoid.Health = 0
      elseif not Entered and RootPart and Humanoid then
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
	        firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	        firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	        until Entered
			Humanoid:UnequipTools()
      elseif Entered and RootPart and Humanoid and Torso.Transparency == 1 then
               for i, v in next, players:GetPlayers() do
                      if v ~= localPlayer and v.Character and not v.Character:FindFirstChild("isParticipating") and v.Character:FindFirstChild("Torso") and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("entered") and v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Ragdolled.Value == false then
                                  RootPart.CFrame = v.Character:FindFirstChild("Right Leg").CFrame * CFrame.new(6,-5,6)
                                  task.wait()
                                  Humanoid.PlatformStand = true
                                  wait(.20)
                                  shared.gloveHits[getGlove()]:FireServer(v.Character:FindFirstChild("Torso"))
                                   wait(.20)
                                  HumanoidRootPart.CFrame = SafeMArena
                                  task.wait(randomw)
                          end
                  end
       end
end
end

-------------------------------

if MAINNG then
	if not Pause then
		if not ACTIVE and Entered and RootPart and Humanoid and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and RootPart and Humanoid then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until character:WaitForChild("isInArena").Value == true
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeMArena
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and RootPart and Humanoid then
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

if ALTTG then
	if not Pause then
		if not ACTIVE and Entered and RootPart and Humanoid and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and RootPart and Humanoid then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until character:WaitForChild("isInArena").Value == true
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeAArena
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and RootPart and Humanoid then
		    ACTIVE = true
			repeat
			RootPart.CFrame = SafeAArena
			task.wait(1)
			until Humanoid.Died
		end
	else
	ACTIVE = false
	end
end

---------------------------

if MAINNNG then
	if not Pause then
		if not ACTIVE and Entered and RootPart and Humanoid and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and RootPart and Humanoid then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(Head, workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(Head, workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until character:WaitForChild("isInArena").Value == true
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeMDefault
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and RootPart and Humanoid then
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

if ALTTTG then
	if not Pause then
		if not ACTIVE and Entered and RootPart and Humanoid and Torso.Transparency == 0 then
			Humanoid.Health = 0
		elseif not Entered and RootPart and Humanoid then
            task.wait(1)
			local gloveClickk = localPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(Head, workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(Head, workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until character:WaitForChild("isInArena").Value == true
			Humanoid:UnequipTools()
		    RootPart.CFrame = SafeADefault
			ACTIVE = true
		elseif Entered and Torso.Transparency == 1 and RootPart and Humanoid then
		    ACTIVE = true
			repeat
			RootPart.CFrame = SafeADefault
			task.wait(1)
			until Humanoid.Died
		end
	else
	ACTIVE = false
	end
end

------------------------------

if BOBB then
local TargetPosition = Vector3.new(-565, 328, 3)
local TargetPart = nil
	if not Entered and RootPart and Humanoid then
	repeat task.wait(2)
			Humanoid:MoveTo(TargetPosition, TargetPart)
	until character:WaitForChild("isInArena").Value == true
			vim:SendKeyEvent(true, "E", false, game)
			task.wait()
			vim:SendKeyEvent(false, "E", false, game)
			task.wait(1.2)
			Humanoid.Health = 0
	end
task.wait()
end

---------------------------------

if SLAPPLEEEE then
if not Sfarmdone and not Entered and RootPart and Humanoid then
	local gloveClickk = localPlayer.leaderstats.Glove.Value
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.3)
	ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.3)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	repeat task.wait(.5)
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until localPlayer.Character:WaitForChild("isInArena").Value == true
	Humanoid:UnequipTools()
	RootPart.CFrame = CFrame.new(-431, 104, -32)
    for _,v in pairs(workspace.Arena:GetDescendants()) do
         if string.find(v.Name, "Slapple") and v:FindFirstChild("Glove") and v.Glove:FindFirstChildOfClass("TouchTransmitter") then
            firetouchinterest(Head, v.Glove, 0)
			firetouchinterest(Head, v.Glove, 1)
            wait(0.05)
            elseif v:FindFirstChild("Glove") and v.Glove:FindFirstChildOfClass("TouchTransmitter") == nil then
            Sfarmdone = true
        end
     end
end
end

end
end)


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
    
    local num = 0;
    
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
                wait()
                pcall(function()
                    writefile("SBServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))      
              wait()
                    TPService:TeleportToPlaceInstance(PlaceID, ID, localPlayer)
                end)
                wait(3)
            end
        end
    end
end

function Teleportslapple()
task.wait(20)
OrionLib:MakeNotification({
	Name = "Teleporting",
	Content = "Please Wait....",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
	task.wait(3)
    while task.wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

----------Player List-----------

local function RefreshPlayers()
   local PlayerList = {}
   for _,Player in next, players:GetPlayers() do
       if Player ~= localPlayer then
       if not table.find(PlayerList, Player.Name) then
           table.insert(PlayerList, Player.Name)
       end
       end
   end
   
   for i,v in pairs(OrionLib.Flags) do
       if string.match(i, "Playerlistt") then
           if table.find(PlayerList, v.Value) then
               v:Refresh(PlayerList, true)
           else
               v:Refresh(PlayerList, true)
               v:Set("...")
           end
       end
   end
end
RefreshPlayers()
players.PlayerAdded:Connect(RefreshPlayers)
players.PlayerRemoving:Connect(RefreshPlayers)

------------------------------
task.wait(2)
OrionLib:Init()