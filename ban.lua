local bannedPlayers = {}

local function banPlayer(playerName)
    -- Add the playerName to the bannedPlayers table
    table.insert(bannedPlayers, playerName)
    print(playerName .. " has been banned.")
end

local function onBanButtonClicked()
    local playerNameToBan = BanGui.TextBox.Text
    banPlayer(playerNameToBan)
end

-- Create the GUI
local BanGui = Instance.new("ScreenGui")
BanGui.Name = "BanGui"

local TextBox = Instance.new("TextBox")
TextBox.Parent = BanGui
TextBox.Position = UDim2.new(0.5, -100, 0.5, -50)
TextBox.Size = UDim2.new(0, 200, 0, 25)
TextBox.PlaceholderText = "Enter player name..."
TextBox.FontSize = Enum.FontSize.Size18

local BanButton = Instance.new("TextButton")
BanButton.Parent = BanGui
BanButton.Position = UDim2.new(0.5, -50, 0.5, 0)
BanButton.Size = UDim2.new(0, 100, 0, 25)
BanButton.Text = "Ban User"
BanButton.FontSize = Enum.FontSize.Size18
BanButton.TextColor3 = Color3.new(1, 1, 1)
BanButton.BackgroundColor3 = Color3.new(0, 0.5, 0.5)

-- Event handling for the BanButton click
BanButton.MouseButton1Click:Connect(onBanButtonClicked)

-- Put this script in StarterGui or a LocalScript in StarterPlayerScripts
BanGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
