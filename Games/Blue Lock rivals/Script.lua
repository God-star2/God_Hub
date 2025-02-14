local Godhub = loadstring(game:HttpGet('https://raw.githubusercontent.com/God-star2/Godhub/refs/heads/main/Source.lua'))()
local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
        local trueData = "29bad42cf32742aea616d7044dd4497a"
        local falseData = "a337667d74544360aef02bccd2552d49"

local Window = Godhub:CreateWindow({
    Name = "God_Hub",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Godhub Interface Suite",
    LoadingSubtitle = "by Fellow_god",
    Theme = "Default", -- Check https://docs.sirius.menu/Godhub/configuration/themes
 
    DisableGodhubPrompts = false,
    DisableBuildWarnings = false, -- Prevents Godhub from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "God_Hub", -- Create a custom folder for your hub/game
       FileName = "God_Hub"
    },
 
    Discord = {
       Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "https://discord.gg/MYfgpJRxr3", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
 
        KeyGuardLibrary.Set({
          publicToken = "c250e855663341db8ad05ab6f1eb9857",
          privateToken = "9f9b86f2362642fba2810b1666c60270",
          trueData = trueData,
          falseData = falseData,
        })
        
        local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        local key = ""
        
        local Window = Fluent:CreateWindow({
            Title = "Key System",
            SubTitle = "GodHub",
            TabWidth = 160,
            Size = UDim2.fromOffset(580, 340),
            Acrylic = false,
            Theme = "Dark",
            MinimizeKey = Enum.KeyCode.LeftControl
        })
        
        local Tabs = {
            KeySys = Window:AddTab({ Title = "Key System", Icon = "key" }),
        }
        
        local Entkey = Tabs.KeySys:AddInput("Input", {
            Title = "Enter Key",
            Description = "Enter Key Here",
            Default = "",
            Placeholder = "Enter key…",
            Numeric = false,
            Finished = false,
            Callback = function(Value)
                key = Value
            end
        })
        
        local Checkkey = Tabs.KeySys:AddButton({
            Title = "Check Key",
            Description = "Enter Key before pressing this button",
            Callback = function()
                local response = KeyGuardLibrary.validateDefaultKey(key)
                if response == trueData then
                   print("Key is valid")
                   -- Your code here
                else
                   print("Key is invalid")
                end
            end
        })
        
        local Getkey = Tabs.KeySys:AddButton({
            Title = "Get Key",
            Description = "Get Key here",
            Callback = function()
               setclipboard(KeyGuardLibrary.getLink())
            end
        })
        
        Window:SelectTab(1)
    }
 })

end