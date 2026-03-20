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

local blur = Instance.new("BlurEffect")
blur.Size = 25
blur.Parent = Lighting

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OptionsHubNotice"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 0.3
background.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.6, 0, 0.5, 0)
textLabel.Position = UDim2.new(0.2, 0, 0.2, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Font = Enum.Font.FredokaOne
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
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
exitButton.Size = UDim2.new(0.2, 0, 0.08, 0)
exitButton.Position = UDim2.new(0.4, 0, 0.75, 0)
exitButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
exitButton.Text = "EXIT"
exitButton.TextScaled = true
exitButton.Font = Enum.Font.FredokaOne
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.Parent = background

exitButton.MouseButton1Click:Connect(function()
    blur:Destroy()
    screenGui:Destroy()
end)
