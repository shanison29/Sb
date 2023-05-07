
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
                    Name = "Farm",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
				
				local Tab2 = Window:MakeTab({
                    Name = "TP",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
				
                local Tab3 = Window:MakeTab({
                    Name = "Anti",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                local Tab4 = Window:MakeTab({
                    Name = "Test",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                
                 local Tab5 = Window:MakeTab({
                    Name = "Other",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
				
				
				
				
				
				
--------------------------------------------------------



local virtualUser = game:GetService('VirtualUser')
local vim = game:service'VirtualInputManager'

local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local LocalPlayer = Players.LocalPlayer

--Aura
local MaxDistance = 20

--Alert
UserSettings():GetService'UserGameSettings'.MasterVolume = 8
local SoundDelay = 2
local Sound = Instance.new('Sound', game:GetService'SoundService')
Sound.SoundId = 'rbxassetid://4590662766'
Sound.Volume = 8

--Whitelist nearby player
local Myself = {
"TrazerGamingYT",
"PROlegend_98",
"xLichtxBachx"
}


--Player Counter
local playernum = 0
local numtopause = 5

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
local SLAPPLEEE = false
local MAINNG = false
local ALTTG = false
local MAINNNG = false
local ALTTTG = false
local PFARM = false

local NAMETT = false
local ASTOPP = false
local ADMINN = false

local Voidd = "OFF"
local CUBE = "OFF"
local BAR = "OFF"
local BRA = "OFF"
local Ahallow = "OFF"
local AntiZa = "OFF"
local BUSSS = "OFF"
local PUSHH = "OFF"
local Reaper = "OFF"
local Amail = "OFF"
local Astun = "OFF"
local Hrock = "OFF"
local Asquid = "OFF"
local Abubble = "OFF"
local Lockpos = "OFF"

local wall = false
local zahando = false


-------------Random Wait----------
local randomw = math.random(2, 4)




-------------------Glove Hit functions------------------------


shared.gloveHits = {
    
    ["Default"] = game.ReplicatedStorage.b,
    ["Extended"] = game.ReplicatedStorage.b,
    
    ----------------------------------------
     
    ["T H I C K"] = game.ReplicatedStorage.GeneralHit,
    ["Squid"] = game.ReplicatedStorage.GeneralHit,
    ["Gummy"] = game.ReplicatedStorage.GeneralHit,
    ["RNG"] = game.ReplicatedStorage.GeneralHit,
    ["Tycoon"] = game.ReplicatedStorage.GeneralHit,
    ["Charge"] = game.ReplicatedStorage.GeneralHit,
    ["Baller"] = game.ReplicatedStorage.GeneralHit,
    ["Tableflip"] = game.ReplicatedStorage.GeneralHit,
    ["Booster"] = game.ReplicatedStorage.GeneralHit,
    ["Shield"] = game.ReplicatedStorage.GeneralHit,
    ["Track"] = game.ReplicatedStorage.GeneralHit,
    ["Goofy"] = game.ReplicatedStorage.GeneralHit,
    ["Confusion"] = game.ReplicatedStorage.GeneralHit,
    ["Elude"] = game.ReplicatedStorage.GeneralHit,
    ["Glitch"] = game.ReplicatedStorage.GeneralHit,
    ["Snowball"] = game.ReplicatedStorage.GeneralHit,
    ["🗿"] = game.ReplicatedStorage.GeneralHit,
    ["Obby"] = game.ReplicatedStorage.GeneralHit,
    ["Voodoo"] = game.ReplicatedStorage.GeneralHit,
    ["Leash"] = game.ReplicatedStorage.GeneralHit,
    ["Flamarang"] = game.ReplicatedStorage.GeneralHit,
    ["Kinetic"] = game.ReplicatedStorage.GeneralHit,
    ["Berserk"] = game.ReplicatedStorage.GeneralHit,
    ["Rattlebones"] = game.ReplicatedStorage.GeneralHit,
    ["Chain"] = game.ReplicatedStorage.GeneralHit,
    ["Ping Pong"] = game.ReplicatedStorage.GeneralHit,
    ["Ultra Instinct"] = game.ReplicatedStorage.GeneralHit,
    ----------------------------------------
    
    ["Diamond"] = game.ReplicatedStorage.DiamondHit,
    ["ZZZZZZZ"] = game.ReplicatedStorage.ZZZZZZZHit,
    ["Brick"] = game.ReplicatedStorage.BrickHit,
    ["Snow"] = game.ReplicatedStorage.SnowHit,
    ["Pull"] = game.ReplicatedStorage.PullHit,
    ["Flash"] = game.ReplicatedStorage.FlashHit,
    ["Spring"] = game.ReplicatedStorage.springhit,
    ["Swapper"] = game.ReplicatedStorage.HitSwapper,
    ["Bull"] = game.ReplicatedStorage.BullHit,
    ["Dice"] = game.ReplicatedStorage.DiceHit,
    ["Ghost"] = game.ReplicatedStorage.GhostHit,
    ["Thanos"] = game.ReplicatedStorage.ThanosHit,
    ["Stun"] = game.ReplicatedStorage.HtStun,
    ["Za Hando"] = game.ReplicatedStorage.zhramt,
    ["Fort"] = game.ReplicatedStorage.Fort,
    ["Magnet"] = game.ReplicatedStorage.MagnetHIT,
    ["Pusher"] = game.ReplicatedStorage.PusherHit,
    ["Anchor"] = game.ReplicatedStorage.hitAnchor,
    ["Space"] = game.ReplicatedStorage.HtSpace,
    ["Boomerang"] = game.ReplicatedStorage.BoomerangH,
    ["Dream"] = game.ReplicatedStorage.Dreamhit,
    ["Mail"] = game.ReplicatedStorage.MailHit,
    ["Golden"] = game.ReplicatedStorage.GoldenHit,
    ["Cheeky"] = game.ReplicatedStorage.CheekyHit,
    ["Reaper"] = game.ReplicatedStorage.ReaperHit,
    ["Defense"] = game.ReplicatedStorage.DefenseHit,
    ["Killstreak"] = game.ReplicatedStorage.KSHit,
    ["Reverse"] = game.ReplicatedStorage.ReverseHit,
    ["Shukuchi"] = game.ReplicatedStorage.ShukuchiHit,
    ["Duelist"] = game.ReplicatedStorage.DuelistHit,
    ["Woah"] = game.ReplicatedStorage.woahHit,
    ["Ice"] = game.ReplicatedStorage.IceHit,
    ["Adios"] = game.ReplicatedStorage.hitAdios,
    ["Blocked"] = game.ReplicatedStorage.BlockedHit,
    ["Engineer"] = game.ReplicatedStorage.engiehit,
    ["Rocky"] = game.ReplicatedStorage.RockyHit,
    ["Conveyor"] = game.ReplicatedStorage.ConvHit,
    ["STOP"] = game.ReplicatedStorage.STOP,
    ["Phantom"] = game.ReplicatedStorage.PhantomHit,
    ["Wormhole"] = game.ReplicatedStorage.WormHit,
    ["Acrobat"] = game.ReplicatedStorage.AcHit,
    ["Plague"] = game.ReplicatedStorage.PlagueHit,
    ["Megarock"] = game.ReplicatedStorage.DiamondHit,
    ["[REDACTED]"] = game.ReplicatedStorage.ReHit,
    ["bus"] = game.ReplicatedStorage.hitbus,
    ["Phase"] = game.ReplicatedStorage.PhaseH,
    ["Warp"] = game.ReplicatedStorage.WarpHt,
    ["Bomb"] = game.ReplicatedStorage.BombHit,
    ["Bubble"] = game.ReplicatedStorage.BubbleHit,
    ["Jet"] = game.ReplicatedStorage.JetHit,
    ["Shard"] = game.ReplicatedStorage.ShardHIT,
    ["potato"] = game.ReplicatedStorage.potatohit,
    ["Cult"] = game.ReplicatedStorage.CULTHit,
    ["bob"] = game.ReplicatedStorage.bobhit,
    ["Buddies"] = game.ReplicatedStorage.buddiesHIT,
    ["Moon"] = game.ReplicatedStorage.CelestialHit,
    ["Jupiter"] = game.ReplicatedStorage.CelestialHit,
    ["Spy"] = game.ReplicatedStorage.SpyHit,
    ["Detonator"] = game.ReplicatedStorage.DetonatorHit,
    ["Rage"] = game.ReplicatedStorage.GRRRR,
    ["Trap"] = game.ReplicatedStorage.traphi,
    ["Orbit"] = game.ReplicatedStorage.Orbihit,
    ["Hybrid"] = game.ReplicatedStorage.HybridCLAP,
    ["Slapple"] = game.ReplicatedStorage.SlappleHit,
    ["Disarm"] = game.ReplicatedStorage.DisarmH,
    ["Dominance"] = game.ReplicatedStorage.DominanceHit,
    ["Link"] = game.ReplicatedStorage.LinkHit,
    ["Custom"] = game.ReplicatedStorage.CustomHit,

    
    ----------------------------------------
    
    ["Mitten"] = game.ReplicatedStorage.MittenHit,
    ["Hallow Jack"] = game.ReplicatedStorage.HallowHIT,

    ----------------------------------------
    
    ["OVERKILL"] = game.ReplicatedStorage.Overkillhit,
    ["The Flex"] = game.ReplicatedStorage.FlexHit,
    ["God's Hand"] = game.ReplicatedStorage.Godshand,
    ["Error"] = game.ReplicatedStorage.Errorhit
    
}

---------Current Glove local Function----------


local function getGlove()
return game.Players.LocalPlayer.leaderstats.Glove.Value
end


----------------Auto rejoin on kick----------


game.Players.PlayerRemoving:connect(function(me)
    if me == game.Players.LocalPlayer then
      game:GetService('TeleportService'):Teleport(game.PlaceId)
    end
end)

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

queueteleport([[
repeat task.wait() until game:IsLoaded()
task.wait(2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/shanison29/Sb/main/sbv1.lua'))()
]])

---------------Player Count on GUI-------------

local countdisplay = Tab:AddLabel("-- Player Count:  "..tostring(playernum + 1).."  --")

for i,v in pairs(game:GetService("Players"):GetChildren())do 
    if v ~= game:GetService("Players").LocalPlayer then 
        playernum = playernum + 1
		countdisplay:Set("-- Player Count:  "..tostring(playernum).."  --")
    end
end

game:GetService("Players").PlayerAdded:Connect(function()
   playernum = playernum + 1
   countdisplay:Set("-- Player Count:  "..tostring(playernum).."  --")
end)

game:GetService("Players").PlayerRemoving:Connect(function()
    playernum = playernum - 1
	countdisplay:Set("-- Player Count:  "..tostring(playernum).."  --")
end)





------------------///TAB 1///--------------------




Tab:AddDropdown({
Name = "Auto Slap (Need Glove Eqquiped)",
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
	if not Pause then
		virtualUser:CaptureController()
		virtualUser:ClickButton1(Vector2.new(120,120))
	end
end

end
})




------------------------------------------



Tab:AddDropdown({
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
	if not Pause and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

	
      pcall(function()
            for i, v in next, game:GetService("Players"):GetPlayers() do
                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("entered") then
                      if v.Character:FindFirstChild("Head") then
                            if v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("rock") == nil then 
                                 if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
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
end
end
})


-------------------------------------

Tab:AddDropdown({
Name = "Slap Aura Range",
Default = 20,
Options = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 100, 500, 1000},
Callback = function(Dist)
MaxDistance = Dist
end    
})




---------------------------------------------


Tab:AddDropdown({
Name = "Auto Player Farm (Ghost)",
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

while PFARM and task.wait() do
if not Pause then
      if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            workspace.DEATHBARRIER.CanTouch = false
            workspace.DEATHBARRIER2.CanTouch = false
            workspace.dedBarrier.CanTouch = false
            task.wait(1)
			local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait()
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	       until game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
      
      elseif game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:WaitForChild("Torso").Transparency == 1 then
               for i, v in next, game.Players:GetPlayers() do
                      if v ~= game.Players.LocalPlayer and v.Character and not v.Character:FindFirstChild("isParticipating") and v.Character:FindFirstChild("Torso") and v.Character:FindFirstChild("Head") and v.Character:WaitForChild("isInArena").Value == true and v.Character:WaitForChild("isInDefaultArena").Value == false and v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Ragdolled.Value == false then
                                  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Character:FindFirstChild("Right Leg").CFrame * CFrame.new(6,-5,6)
                                  task.wait()
                                  game.Players.LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true
                                  wait(.25)
                                  shared.gloveHits[getGlove()]:FireServer(v.Character:FindFirstChild("Torso"))
                                   wait(.25)
                                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeMArena
                                  task.wait(randomw)
                          end
                  end

      end
end
end


end
})

----------------------------------------------

Tab:AddDropdown({
Name = "Main Ghost (Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "MAINNGt",
Callback = function(MA)

if MA == "ON" then
	MAINNG = true
elseif MA == "OFF" then
	MAINNG = false
end

while MAINNG and task.wait() do
	if not Pause then
		if not ACTIVE and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		elseif game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            task.wait(1)
			local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait(.5)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeMArena
			ACTIVE = true
		elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		    ACTIVE = true
			repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeMArena
			task.wait(1)
			until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died
			ACTIVE = false
		end
	else
	ACTIVE = false
	end
end

end
})




-------------------------------------------




Tab:AddDropdown({
Name = "Alt Ghost (Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "ALTTGt",
Callback = function(AA)

if AA == "ON" then
	ALTTG = true
elseif AA == "OFF" then
	ALTTG = false
end


while ALTTG and task.wait() do
	if not Pause then
		if not ACTIVE and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		elseif game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            task.wait(1)
			local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait(.5)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeAArena
			ACTIVE = true
		elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		    ACTIVE = true
			repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeAArena
			task.wait(1)
			until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died
			ACTIVE = false
		end
	else
	ACTIVE = false
	end
end

end
})





-------------------------------------------------






Tab:AddDropdown({
Name = "Main Ghost (Default Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "MAINNNGt",
Callback = function(MAA)

if MAA == "ON" then
	MAINNNG = true
elseif MAA == "OFF" then
	MAINNNG = false
end

while MAINNNG and task.wait() do
	if not Pause then
		if not ACTIVE and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            task.wait(1)
			local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait(.5)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeMDefault
			ACTIVE = true
		elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		    ACTIVE = true
			repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeMDefault
			task.wait(1)
			until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died
			ACTIVE = false
		end
	else
	ACTIVE = false
	end
end

end
})




-------------------------------------------




Tab:AddDropdown({
Name = "Alt Ghost (Default Arena)",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "ALTTTGt",
Callback = function(AAA)

if AAA == "ON" then
	ALTTTG = true
elseif AAA == "OFF" then
	ALTTTG = false
end

while ALTTTG and task.wait() do
	if not Pause then
		if not ACTIVE and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            task.wait(1)
			local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
			task.wait(.3)
			game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			task.wait(.3)
			fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
			repeat task.wait(.5)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeADefault
			ACTIVE = true
		elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		    ACTIVE = true
			repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeADefault
			task.wait(1)
			until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died
			ACTIVE = false
		end
	else
	ACTIVE = false
	end
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
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	BOBB = true
elseif BOB == "OFF" then
	BOBB = false
end

while BOBB and task.wait() do
	if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	
	repeat task.wait(2)
			local Playerrr = game:GetService("Players").LocalPlayer
			local Characterrr = Playerrr.Character or Playerrr.CharacterAdded:wait()
			local Humanoiddd = Characterrr:WaitForChild("Humanoid")
			local TargetPositionnn = Vector3.new(-565, 328, 3)
			local TargetParttt = nil
			Humanoiddd:MoveTo(TargetPositionnn, TargetParttt)

	until game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true
	
			vim:SendKeyEvent(true, "E", false, game)
			task.wait()
			vim:SendKeyEvent(false, "E", false, game)
			task.wait(1.2)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
	
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
	if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false then
		for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do
			if Instance.ClassName == "TouchTransmitter" then
			firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 0)
			firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 1)
			end
		end
	end
end

end
})





------------------///TAB 2///--------------------




Tab2:AddButton({
Name = "TP to SafeBox (Arena)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then

firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

task.wait(.2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)

elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)
end
end   
})




------------------------------------------------------------



Tab2:AddButton({
Name = "TP to SafeBox (Default Arena)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then

firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)

task.wait(.2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot2.CFrame * CFrame.new(0,50,0)
elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == true then 

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot2.CFrame * CFrame.new(0,50,0)
end
end
})




------------------------------------------------------------




Tab2:AddButton({
Name = "TP to Plate",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then

firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

task.wait(.2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)

elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
end
end
})





----------------------------------------------





Tab2:AddButton({
Name = "TP to Rock (Arena)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then

firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

task.wait(.2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame

elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
end
end
})





------------------------------------------------------





Tab2:AddButton({
Name = "TP to Moai(Tree Top)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then

firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

task.wait(.2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(222, 22, 2)

elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(222, 22, 2)
end
end
})





--------------------------------------------------------




Tab2:AddButton({
Name = "TP to Slapple(Tree Top)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then

firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

task.wait(.2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-431, 104, -32)

elseif game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-431, 104, -32)
end
end
})





------------------///TAB 3///--------------------





Tab3:AddDropdown({
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


Tab3:AddDropdown({
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



Tab3:AddDropdown({
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


Tab3:AddDropdown({
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

-------------------------------------------



Tab3:AddDropdown({
Name = "Anti Hallow Jack",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Ahallowt",
Callback = function(Value)
Ahallow = Value

end    
})

spawn(function()
while task.wait() do
	if Ahallow == "ON" then
		game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true
		game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = false
	else
		game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true
		game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = false
	end
end
end)




--------------------------------------------------




Tab3:AddDropdown({
Name = "Anti Za Hando",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "AntiZat",
Callback = function(Value)
AntiZa = Value


while AntiZa == "ON" and task.wait() do
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.ClassName == "Part" and v.Name == "Part" then
			v:Destroy()
		end
	end
end

end    
})




-----------------------------------------------------------------




Tab3:AddDropdown({
Name = "Anti Bus",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "BUSSSt",
Callback = function(Value)
BUSSS = Value


while BUSSS == "ON" and task.wait() do
	for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
		if p.Name == "BusModel" then
			p.CanCollide = false;
			p.CanTouch = false;
			p.Transparency = 0.8;
		end
	end
end

end
})




----------------------------------------------------------------




Tab3:AddDropdown({
Name = "Anti Wall",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "PUSHHt",
Callback = function(Value)
PUSHH = Value

while PUSHH == "ON" and task.wait() do
	for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
		if p.Name == "wall" then
			p.CanCollide = false;
			p.CanTouch = false;
			p.Transparency = 0.8;
		end
	end
end

end
})




------------------------------------------




Tab3:AddDropdown({
Name = "Anti Reaper",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Reapert",
Callback = function(Value)
Reaper = Value

while Reaper == "ON" and task.wait() do
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "DeathMark" then
			game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
			game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
		end 
	end
end

end    
})




-----------------------------------------




Tab3:AddDropdown({
Name = "Anti Screen Block",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Amailt",
Callback = function(Value)
Amail = Value

while Amail == "ON" and task.wait() do
	for _,v in pairs(LocalPlayer.PlayerGui:GetChildren()) do
		if v.Name == "VineThudImageScreenGUI" or v.Name == "MailPopup" or v.Name == "MittenBlind" then 
			v:Destroy();
		end
	end
	if game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect") then
	game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect"):Destroy();
	end
end

end    
})




---------------------------------------------




Tab3:AddDropdown({
Name = "Anti Stun",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Astunt",
Callback = function(Value)
Astun = Value


while Astun == "ON" and task.wait() do
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and  game.Workspace:FindFirstChild("Shockwave") then
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	end
end

end    
})



---------------------------------------



Tab3:AddDropdown({
Name = "Anti ROCK",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Hrockt",
Callback = function(Value)
Hrock = Value


if Hrock == "ON" then
		for _,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Character:FindFirstChild("rock") then
				v.Character:FindFirstChild("rock").CanTouch = false;
				v.Character:FindFirstChild("rock").CanQuery = false;
			end
		end
else 
		for _,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Character:FindFirstChild("rock") then
				v.Character:FindFirstChild("rock").CanTouch = true;
				v.Character:FindFirstChild("rock").CanQuery = true;
			end
		end
end

end    
})



---------------------------------------



Tab3:AddDropdown({
Name = "Anti Squid",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Asquidt",
Callback = function(Value)
Asquid = Value

while Asquid == "ON" and task.wait() do              
	for i,v in pairs(game.Players.LocalPlayer.PlayerGui.SquidInk:GetChildren()) do        
		if v.Parent then             
		v:Destroy()               
		end
	end
task.wait()
end    
end    
})




-------------------------------------



Tab3:AddDropdown({
Name = "Anti Bubble",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Abubblet",
Callback = function(Value)
Abubble = Value


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




------------------///TAB 4///--------------------

----Teleport

local PlaceID = game.PlaceId
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

    local Site;
    
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
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.
Players.LocalPlayer)
                end)
                wait(3)
            end
        end
    end
end



function Teleport()
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




---------------------



Tab4:AddToggle({
Name = "Auto Slapple Farm",
Default = false,
Save = true,
Flag = "SLAPPLEEEt",
Callback = function(SLAPPLEEE)
if SLAPPLEEE then
OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Auto Slapple Farm Enabled..",
	Image = "rbxassetid://4483345998",
	Time = 30
	})
	Sfarm()
end
end
})


function Sfarm()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
	local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.3)
	game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.3)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	repeat task.wait(.5)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-431, 104, -32)
end
task.wait(1)

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
      for _,v in pairs(workspace.Arena:GetDescendants()) do
         if string.find(v.Name, "Slapple") and v:FindFirstChild("Glove") and v.Glove:FindFirstChildOfClass("TouchTransmitter") then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Glove, 0)
			firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Glove, 1)
            wait(0.05)
            else
            Sfarmdone = true
        end
     end
end

task.wait(15)
Teleport()
end



-------------------------------------------------------

Tab4:AddButton({
Name = "Ghost Mode(Lobby)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
	local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.2)
	game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
end
end
})




------------------------------------------




Tab4:AddButton({
Name = "Ghost Mode(Arena)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
	local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.2)
	game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	repeat task.wait(.5)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
end

end
})




------------------------------------------




Tab4:AddButton({
Name = "Ghost Mode(Default Arena)",
Callback = function()

if game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("isInDefaultArena").Value == false and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
	local gloveClickk = game.Players.LocalPlayer.leaderstats.Glove.Value
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.2)
	game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.2)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	repeat task.wait(.5)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Go to Lobby",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
end

end
})


-------------------------------------------



Tab4:AddButton({
Name = "Save Position",
Callback = function()

Savepos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame

end
})


------------------------------------------

Tab4:AddDropdown({
Name = "Anchor Body to Save Position",
Default = "OFF",
Options = {"OFF", "ON"},
Flag = "Lockpost",
Callback = function(Value)
Lockpos = Value

if Lockpos == "ON" then
   if Savepos ~= nil then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Savepos
	task.wait(.5)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
	else
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Get Position first",
	Image = "rbxassetid://4483345998",
	Time = 3
	})
	end
elseif Lockpos == "OFF" then
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
end

end    
})




------------------------------------------------


Tab4:AddButton({
Name = "GIANT WALL (Lobby)",
Callback = function()

local GUI = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

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
game:GetService("ReplicatedStorage"):WaitForChild("PusherWall"):FireServer()
wall = true
task.wait(5)
wall = false
end

if wall == true then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
task.wait(4)
wall = false
end
end)

end
})


-------------------------------------------------------




function refreshlist()

local list = {}

   for i,v in pairs(game.Players:GetPlayers()) do
       if v ~= game.Players.LocalPlayer then
           if not table.find(list, v.Name) then
						table.insert(list, v.Name)
			end
       end
   end
   
   return list
   
end

Tab4:AddButton({
Name = "Refresh Player List",
Callback = function()
      plrdrop:Refresh(refreshlist(), true)
  end    
})

local plrdrop = Tab4:AddDropdown({
Name = "Players",
Default = "...",
Options = refreshlist(),
Callback = function(nnaammee)
plrname = nnaammee
end    
})








Tab4:AddButton({
Name = "BRAZIL - za hando",
Callback = function()

local GUI = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

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

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
      if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            if v.Name == plrname then
                trgtpos = v.Character.HumanoidRootPart.Position

				
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(trgtpos)

				task.wait(0.7)
				game:GetService("ReplicatedStorage").Erase:FireServer()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(1022,213.8,1498)
				
				task.wait(.13)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				task.wait(3.5)
				game.Players.LocalPlayer.Character.Humanoid.Health = 0

             end
       end
end

end

end)

end
})





-----------------------///TAB 5///--------------------------------





Tab5:AddDropdown({
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
	if ASTOPP and ACTIVE and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and not table.find(Myself, v.Name) then
				if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
					--game:GetService("Players").LocalPlayer:Kick("Someone's Nearby")
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




spawn(function()

while task.wait() do

	if ASTOPP and Pause and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true then
			--game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
	elseif Sfarmdone and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:WaitForChild("isInArena").Value == true then
              game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
	
end

end)


-----SOUND ALERT-----


spawn(function()
while task.wait() do
	if ASTOPP or ADMINN then
		if Pause then
		Sound:Play()
		task.wait(SoundDelay)
		end
	end
end
end)



----------------------------------------------------------



Tab5:AddDropdown({
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
      game.Players.PlayerAdded:Connect(function(Plra)
         if Plra:GetRankInGroup(9950771) and 2 <= Plra:GetRankInGroup(9950771) then
            Pause = true
            game.Players.LocalPlayer:Kick("Admin/High Rank Player Detected")
         end
      end)
	end
end
end)





---------------------------------------------------------------



Tab5:AddDropdown({
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
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end

end
})


spawn(function()
while task.wait() do
	if NAMETT then
		if not Pause then
			task.wait(.001)
			local charr = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
			if charr:WaitForChild("Head"):FindFirstChild("Nametag") then
				charr:FindFirstChild("Head"):FindFirstChild("Nametag"):Destroy()
			end
		end
	end
task.wait()
end
end)




---------------------------------------------


Tab5:AddDropdown({
Name = "WhiteScreen",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "WHITEt",
Callback = function(Value)

Save = Value

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


Tab5:AddButton({
Name = "RESET ALL",
Callback = function()
	
	
	Pause = false
	ACTIVE = false
	OrionLib.Flags["PFARMt"]:Set("OFF")
	OrionLib.Flags["Rname"]:Set("OFF")
	OrionLib.Flags["ASSt"]:Set("OFF")
	OrionLib.Flags["KAAt"]:Set("OFF")
	OrionLib.Flags["BOBBt"]:Set("OFF")
	OrionLib.Flags["SLAPPLEEt"]:Set("OFF")
	OrionLib.Flags["MAINNGt"]:Set("OFF")
	OrionLib.Flags["ALTTGt"]:Set("OFF")
	OrionLib.Flags["MAINNNGt"]:Set("OFF")
	OrionLib.Flags["ALTTTGt"]:Set("OFF")
	OrionLib.Flags["Voiddt"]:Set("OFF")
	OrionLib.Flags["CUBEEt"]:Set("OFF")
	OrionLib.Flags["BARRt"]:Set("OFF")
	OrionLib.Flags["BRAZt"]:Set("OFF")
	OrionLib.Flags["Ahallowt"]:Set("OFF")
	OrionLib.Flags["AntiZat"]:Set("OFF")
	OrionLib.Flags["BUSSSt"]:Set("OFF")
	OrionLib.Flags["PUSHHt"]:Set("OFF")
	OrionLib.Flags["Reapert"]:Set("OFF")
	OrionLib.Flags["Amailt"]:Set("OFF")
	OrionLib.Flags["Astunt"]:Set("OFF")
	OrionLib.Flags["Hrockt"]:Set("OFF")
	OrionLib.Flags["Asquidt"]:Set("OFF")
	OrionLib.Flags["Abubblet"]:Set("OFF")
	OrionLib.Flags["Lockpost"]:Set("OFF")

	wall = false
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	
end    
})


-------------------------------------------


Tab5:AddButton({
	Name = "Rejoin Server",
	Callback = function()

local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

ts:Teleport(game.PlaceId, p)

end    
})




------------------------------------------








Tab5:AddButton({
	Name = "Join Lowest Player Server",
	Callback = function()
    

local pageLimit = math.huge -- Set to math.huge to explore all pages


local HttpService = game:GetService('HttpService');
local TPService = game:GetService("TeleportService");

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
    TPService:TeleportToPlaceInstance(game.PlaceId, serverId);
end

end    
})

Tab5:AddButton({
	Name = "EXIT GUI",
	Callback = function()
    OrionLib:Destroy()
  	end    
})


OrionLib:Init()
-------------------------------------------------------------------
