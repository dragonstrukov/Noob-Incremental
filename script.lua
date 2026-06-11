local gameid = 76911729991355

if game.PlaceId ~= gameid then
    return
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Noob Incremental",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "loading script",
   LoadingSubtitle = "by dragonstrukov",
   ShowText = "Rayfield", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

    ScriptID = "sid_mxjpiuzrwi21", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Noob Incremental"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"123"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local Tab = Window:CreateTab("Oofs", "rewind")

local Label = Tab:CreateLabel("Upgrades", "rewind")

local Section = Tab:CreateSection("Buy Upgrades")

local Dropdown = Tab:CreateDropdown({
   Name = "Upgrades Mode",
   Options = {"Buy", "Max"},
   CurrentOption = {"Buy"},
   MultipleOptions = false,
   Flag = "UpgradesMode",  -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      if Options[1] then
          getgenv().SelectedUpgradeModeUpgrades = Options[1]
      end
   end,
})

getgenv().SelectedUpgradeModeUpgrades = "Buy"

local Divider = Tab:CreateDivider()

-- More Oof
getgenv().UpgradeMoreOof = false
local ToggleMoreOof = Tab:CreateToggle({
   Name = "More Oof",
   CurrentValue = false,
   Flag = "MoreOof", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeMoreOof = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeMoreOof do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeModeUpgrades or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeUpgrade"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeUpgradeMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Oof", "MoreOof")
              end
          end)
      end
   end,
})

-- Faster Noobs
getgenv().UpgradeFasterNoobs = false
local ToggleFasterNoobs = Tab:CreateToggle({
   Name = "Faster Noobs",
   CurrentValue = false,
   Flag = "FasterNoobs",  -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeFasterNoobs = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeFasterNoobs do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeModeUpgrades or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeUpgrade"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeUpgradeMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Oof", "FasterNoobs")
              end
          end)
      end
   end,
})

-- More Rebirth
getgenv().UpgradeMoreRebirth = false
local ToggleMoreRebirth = Tab:CreateToggle({
   Name = "More Rebirth",
   CurrentValue = false,
   Flag = "MoreRebirth",  -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeMoreRebirth = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeMoreRebirth do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeModeUpgrades or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeUpgrade"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeUpgradeMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Oof", "MoreRebirth")
              end
          end)
      end
   end,
})

-- More Oof Bonus
getgenv().UpgradeMoreOofBonus = false
local ToggleMoreOofBonus = Tab:CreateToggle({
   Name = "More Oof Bonus",
   CurrentValue = false,
   Flag = "MoreOofBonus",  -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeMoreOofBonus = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeMoreOofBonus do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeModeUpgrades or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeUpgrade"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeUpgradeMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Oof", "MoreOofBonus")
              end
          end)
      end
   end,
})

-- Even More Oof
getgenv().UpgradeEvenMoreOof = false
local ToggleEvenMoreOof = Tab:CreateToggle({
   Name = "Even More Oof",
   CurrentValue = false,
   Flag = "EvenMoreOof",  -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeEvenMoreOof = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeEvenMoreOof do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeModeUpgrades or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeUpgrade"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeUpgradeMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Oof", "EvenMoreOof")
              end
          end)
      end
   end,
})

-- More Walk Speed
getgenv().UpgradeMoreWalkSpeed = false
local ToggleMoreWalkSpeed = Tab:CreateToggle({
   Name = "More Walk Speed",
   CurrentValue = false,
   Flag = "MoreWalkSpeed",  -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeMoreWalkSpeed = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeMoreWalkSpeed do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeModeUpgrades or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeUpgrade"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeUpgradeMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Oof", "MoreWalkSpeed")
              end
          end)
      end
   end,
})

-- More Cash
getgenv().UpgradeMoreCash = false
local ToggleMoreCash = Tab:CreateToggle({
   Name = "More Cash",
   CurrentValue = false,
   Flag = "MoreCash", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeMoreCash = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeMoreCash do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeModeUpgrades or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeUpgrade"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeUpgradeMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Oof", "MoreCash")
              end
          end)
      end
   end,
})

local Divider = Tab:CreateDivider()

local Label = Tab:CreateLabel("Noobs", "rewind")

local Section = Tab:CreateSection("Buy Noobs")

local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "Starter Noob",
   Callback = function()
   -- The function that takes place when the button is pressed

    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = CFrame.new(1171.06531, 10.5288372, -690.999023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end

   end,
})

local Button = Tab:CreateButton({
   Name = "Cooker Noob",
   Callback = function()
   -- The function that takes place when the button is pressed

    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = CFrame.new(1178.31531, 10.5288372, -690.999023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end

   end,
})

local Button = Tab:CreateButton({
   Name = "Farmer Noob",
   Callback = function()
   -- The function that takes place when the button is pressed

    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = CFrame.new(1185.81531, 10.5288372, -690.999023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end

   end,
})

local Button = Tab:CreateButton({
   Name = "Archer Noob",
   Callback = function()
   -- The function that takes place when the button is pressed

    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.CFrame = CFrame.new(1193.81531, 10.5288372, -690.999023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end

   end,
})

local Divider = Tab:CreateDivider()

local Label = Tab:CreateLabel("Upgrades", "rewind")

local Section = Tab:CreateSection("Upgrades Noobs")

local Dropdown = Tab:CreateDropdown({
   Name = "Upgrades Mode",
   Options = {"Buy", "Max"},
   CurrentOption = {"Buy"},
   MultipleOptions = false,
   Flag = "UpgradesNoobsMode", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      if Options[1] then
          getgenv().SelectedUpgradeMode = Options[1]
      end
   end,
})

getgenv().SelectedUpgradeMode = "Buy"

local Divider = Tab:CreateDivider()

-- Starter Noob
getgenv().UpgradeStarterNoob = false
local ToggleStarter = Tab:CreateToggle({
   Name = "Starter Noob",
   CurrentValue = false,
   Flag = "StarterNoob", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv().UpgradeStarterNoob = Value
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      if Value then
          task.spawn(function()
              while getgenv().UpgradeStarterNoob do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeMode or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeNoob"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeNoobMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Starter")
              end
          end)
      end
   end,
})

-- Cooker Noob
getgenv().UpgradeCookerNoob = false
local ToggleCooker = Tab:CreateToggle({
   Name = "Cooker Noob",
   CurrentValue = false,
   Flag = "CookerNoob", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv().UpgradeCookerNoob = Value
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeCookerNoob do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeMode or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeNoob"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeNoobMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Cooker")
              end
          end)
      end
   end,
})

-- Farmer
getgenv().UpgradeFarmerNoob = false
local ToggleFarmer = Tab:CreateToggle({
   Name = "Farmer Noob",
   CurrentValue = false,
   Flag = "FarmerNoob", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv().UpgradeFarmerNoob = Value
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      if Value then
          task.spawn(function()
              while getgenv().UpgradeFarmerNoob do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeMode or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeNoob"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeNoobMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Farmer")
              end
          end)
      end
   end,
})

-- Archer
getgenv().UpgradeArcherNoob = false
local ToggleArcher = Tab:CreateToggle({
   Name = "Archer Noob",
   CurrentValue = false,
   Flag = "ArcherNoob", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options

      getgenv().UpgradeArcherNoob = Value
      
      if Value then
          task.spawn(function()
              while getgenv().UpgradeArcherNoob do
                  task.wait(1)
                  
                  local selectedMode = getgenv().SelectedUpgradeMode or "Buy"
                  
                  local mode = ""
                  if selectedMode == "Buy" then
                      mode = "UpgradeNoob"
                  elseif selectedMode == "Max" then
                      mode = "UpgradeNoobMax"
                  end
                  
                  local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
                  Event:FireServer(mode, "Archer")
              end
          end)
      end
   end,
})

local Tab = Window:CreateTab("Rebirth", "rewind")

local Label = Tab:CreateLabel("Rebirth", "rewind")

local Section = Tab:CreateSection("Rebirth")

local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "Rebirth",
   Callback = function()
   -- The function that takes place when the button is pressed

        local Event = game:GetService("ReplicatedStorage").__Net.MainRemote
        Event:FireServer(
            "Rebirth"
        )

   end,
})

local Tab = Window:CreateTab("Fire", "rewind")

local Label = Tab:CreateLabel("Upgrades", "rewind")

local Section = Tab:CreateSection("Buy Upgrades")

local Divider = Tab:CreateDivider()

local Dropdown = Tab:CreateDropdown({
   Name = "Upgrades Mode",
   Options = {"Buy", "Max"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "UpgradesFireMode", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "More Fire",
   CurrentValue = false,
   Flag = "MoreFire", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "More Oof",
   CurrentValue = false,
   Flag = "MoreOof", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "More Rebirth",
   CurrentValue = false,
   Flag = "MoreRebirth", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "More Bulk",
   CurrentValue = false,
   Flag = "MoreBulk", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "MoreCash",
   CurrentValue = false,
   Flag = "MoreCash", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "More Rarity Luck",
   CurrentValue = false,
   Flag = "MoreRarityLuck", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Please More Oofs",
   CurrentValue = false,
   Flag = "PleaseMoreOofs", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Lucky Lucky",
   CurrentValue = false,
   Flag = "LuckyLucky", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Enough Fire!",
   CurrentValue = false,
   Flag = "EnoughFire", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Tab = Window:CreateTab("Blaze", "rewind")

local Label = Tab:CreateLabel("Soon", "rewind")

local Section = Tab:CreateSection("Soon")

local Divider = Tab:CreateDivider()
