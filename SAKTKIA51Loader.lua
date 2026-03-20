local SupportedGames = {
    [155382109] = true,
    [2092166489] = true,
    [5740483929] = true,
    [3182083477] = true
}

local ClassicModes = {
    [2092166489] = true,
    [5740483929] = true,
    [3182083477] = true
}

if not SupportedGames[game.PlaceId] then
    game.Players.LocalPlayer:Kick("THIS GAME IS NOT SUPPORTED YET!!!")
    return
end

if ClassicModes[game.PlaceId] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RileyDoesCode/Options-Hub/refs/heads/main/Games/SAKTKIA51/Gamemodes/ClassicMode.lua"))()
    return
end

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local blur = Lighting:FindFirstChildOfClass("BlurEffect") or Instance.new("BlurEffect")
blur.Size = 35
blur.Parent = Lighting

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OptionsHubNotice"
screenGui.IgnoreGuiInset = true
screenGui.DisplayOrder = 999999
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local background = Instance.new("Frame")
background.Size = UDim2.fromScale(1,1)
background.Position = UDim2.fromScale(0,0)
background.BackgroundColor3 = Color3.fromRGB(0,0,0)
background.BackgroundTransparency = 0.25
background.ZIndex = 10
background.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.fromScale(0.7,0.5)
textLabel.Position = UDim2.fromScale(0.15,0.18)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Font = Enum.Font.FredokaOne
textLabel.TextColor3 = Color3.fromRGB(255,255,255)
textLabel.ZIndex = 11
textLabel.Text = [[
PLEASE EXECUTE OPTIONS HUB
IN GAMEMODES!!!

SUPPORTED GAMEMODES:
CLASSIC MODE (NORMAL, HARD, EXTREME) - [🟢]
KILLER MODE - [🔴]
JUGGERNAUT MODE - [🔴]
ENDLESS SURVIVAL - [🔴]
INFECTION MODE - [🔴]
BOSS RUSH MODE - [🔴]
AREA 51 STORMING - [🔴]
KILLHOUSE - [🔴]
]]
textLabel.Parent = background

local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.fromScale(0.2,0.08)
exitButton.Position = UDim2.fromScale(0.4,0.75)
exitButton.BackgroundColor3 = Color3.fromRGB(255,50,50)
exitButton.Text = "EXIT"
exitButton.TextScaled = true
exitButton.Font = Enum.Font.FredokaOne
exitButton.TextColor3 = Color3.fromRGB(255,255,255)
exitButton.ZIndex = 11
exitButton.Parent = background

exitButton.MouseButton1Click:Connect(function()
    blur:Destroy()
    screenGui:Destroy()
end)
