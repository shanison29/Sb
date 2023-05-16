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


local jesus = Instance.new("Part", workspace)
jesus.Name = "jesusWalk"
jesus.Size = Vector3.new(2047, 0.009, 2019)
jesus.Position = Vector3.new(-80.5, -10.005, -246.5)
jesus.CanCollide = false
jesus.Anchored = true
jesus.Transparency = 1

               
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shanison29/ggg/main/orion3')))()
                
local Window = OrionLib:MakeWindow({Name = "Koolkat", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "ShanSBfarm"})

                local Tab = Window:MakeTab({
                    Name = "Farming",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                local Tab2 = Window:MakeTab({
                    Name = "Security",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })
                
                 local Tab3 = Window:MakeTab({
                    Name = "Other",
                    Icon = "http://www.roblox.com/asset/?id=",
                    PremiumOnly = false
                })

--------------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlaceID = game.PlaceId
local TPService = game:GetService("TeleportService")

local players = game:GetService("Players")
local localPlayer = players.LocalPlayer


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


--Ghost mode safe spots
local SafeMArena = CFrame.new(-1504, 133, -1506)
local SafeAArena = CFrame.new(-1504, 133, -1510)

local PAUSE = false
local SFARMDONE = false


local ASfarmm = false
local Pfarmm = false

local Adminn = false


local RJ = "OFF"
local LOWEST = "OFF"

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
loadstring(game:HttpGet('https://raw.githubusercontent.com/shanison29/Sb/main/sbSFarmv1.lua'))()
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





------------------///TAB 1///--------------------


local DPFARM = Tab:AddDropdown({
Name = "Player Farm (Ghost)",
Default = "OFF",
Options = {"OFF", "ON"},
Save = true,
Flag = "PFARMflag",
Callback = function(Pfarm)

if Pfarm == "ON" then
	Pfarmm = true
elseif Pfarm == "OFF" then
	Pfarmm = false
end

end
})


--------------------------------------

local DASFARM = Tab:AddDropdown({
Name = "Auto Slapple Farm / Hopper",
Default = "OFF",
Save = true,
Options = {"OFF", "ON"},
Flag = "ASFARMflag",
Callback = function(ASfarm)

if ASfarm == "ON" then
	ASfarmm = true
	OrionLib:MakeNotification({
	Name = "Notice..",
	Content = "Auto Slapple Farm Enabled..",
	Image = "rbxassetid://4483345998",
	Time = 10
	})
elseif ASfarm == "OFF" then
	ASfarmm = false
end

end
})


-----SOUND ALERT-----

spawn(function()
while task.wait() do
	if PAUSE then
		UserSettings():GetService'UserGameSettings'.MasterVolume = 5
		Sound:Play()
		task.wait(SoundDelay)
	end
end
end)

----------------------------------------------------------

local DADMIN = Tab2:AddDropdown({
Name = "Anti Admin",
Default = "ON",
Options = {"OFF", "ON"},
Save = true,
Flag = "ADMINflag",
Callback = function(Admin)

if Admin == "ON" then
	Adminn = true
	OrionLib:MakeNotification({
	Name = "Anti Admin Enabled",
	Content = "You are Safe!",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
elseif Admin == "OFF" then
	Adminn = false
end

end
})

spawn(function()

while task.wait() do
	if Adminn then
      players.PlayerAdded:Connect(function(Plra)
         if Plra:GetRankInGroup(9950771) and 2 <= Plra:GetRankInGroup(9950771) then
            PAUSE = true
            localPlayer:Kick("Admin/High Rank Player Detected")
         end
      end)
	end
end

end)

-----------------------///TAB 7///--------------------------------

local DWHITE = Tab3:AddDropdown({
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


-------------------------------------------

local DRJ = Tab3:AddDropdown({
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
DRJ:Set("...")
end

end
})

-----------------------------------------

local DLOWEST = Tab3:AddDropdown({
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

Tab3:AddButton({
	Name = "EXIT GUI",
	Callback = function()
    OrionLib:Destroy()
  	end    
})



-----------------------------------------------------------------
------------------------Farming----------------------------

spawn(function()
while task.wait() do

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local RootPart = character:WaitForChild("HumanoidRootPart")
local Humanoid = character:WaitForChild("Humanoid")
local Torso = character:WaitForChild("Torso")
local Head = character:WaitForChild("Head")
local IsInArena = character:WaitForChild("isInArena")


--------------------------

if Pfarmm then
if playernum >= numtofarm then
PAUSE = false
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
      if IsInArena.Value == true and Torso.Transparency == 0 then
            Humanoid.Health = 0
      elseif not PAUSE and IsInArena.Value == false and RootPart and Humanoid then
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
	        until IsInArena.Value == true
			Humanoid:UnequipTools()
			RootPart.CFrame = SafeMArena
      elseif not PAUSE and IsInArena.Value == true and RootPart and Humanoid and Torso.Transparency == 1 then
               for i, v in next, players:GetPlayers() do
                      if v ~= localPlayer and v.Character and not v.Character:FindFirstChild("isParticipating") and v.Character:FindFirstChild("Torso") and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("entered") and v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Ragdolled.Value == false then
                                  RootPart.CFrame = v.Character:FindFirstChild("Right Leg").CFrame * CFrame.new(6,-5,6)
                                  task.wait()
                                  Humanoid.PlatformStand = true
                                  wait(.20)
                                  shared.gloveHits[getGlove()]:FireServer(v.Character:FindFirstChild("Torso"))
                                   wait(.20)
                                  RootPart.CFrame = SafeMArena
                                  wait(randomw)
                          end
                  end
       end
elseif playernum < numtofarm then
PAUSE = true
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
Humanoid.Health = 0
end
end

---------------------------------

if ASfarmm then
if not SFARMDONE and IsInArena.Value == false and RootPart and Humanoid then
    task.wait(3)
	local gloveClickk = localPlayer.leaderstats.Glove.Value
	fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
	task.wait(.3)
	ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	task.wait(.3)
	fireclickdetector(game.Workspace.Lobby[gloveClickk].ClickDetector)
	repeat task.wait(.5)
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
	firetouchinterest(Head, workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until IsInArena.Value == true
	Humanoid:UnequipTools()
elseif not SFARMDONE and IsInArena.Value == true and RootPart and Humanoid then
    RootPart.CFrame = SafeMArena
    task.wait(1)
    for _,v in pairs(workspace.Arena:GetDescendants()) do
         if string.find(v.Name, "Slapple") and v:FindFirstChild("Glove") and v.Glove:FindFirstChildOfClass("TouchTransmitter") then
            firetouchinterest(Head, v.Glove, 0)
			firetouchinterest(Head, v.Glove, 1)
            wait(0.05)
            elseif v:FindFirstChild("Glove") and v.Glove:FindFirstChildOfClass("TouchTransmitter") == nil then
            SFARMDONE = true
            task.wait(1)
            Teleportslapple()
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

task.wait(2)
OrionLib:Init()