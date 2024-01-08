game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        if game:GetService("CoreGui"):FindFirstChild("Omg Hub| "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) then
            game:GetService("CoreGui"):FindFirstChild("Omg Hub | "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name).Enabled = not game:GetService("CoreGui"):FindFirstChild("Muimi Hub | "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name).Enabled
        end
    end
end)
if game.PlaceId == 14500026273 then
    print ("King Of Sea")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/Protected_6492555543911696.lua.txt"))()
else
end
