local f = "Morphs"
local tf = game.Workspace:FindFirstChild(f)

local function teleportToPart(part)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = player.Character.HumanoidRootPart
        humanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 3, 0) 
    end
end

local function tp()
    if tf then
        for _, part in pairs(tf:GetChildren()) do
            if part:IsA("BasePart") then
                teleportToPart(part)
                wait(1)
            end
        end
        grab()
    else
        print("ERROR!")
    end
end

local function grab()
    local UserInputService = game:GetService("UserInputService")
    UserInputService.InputBegan:Fire(Enum.KeyCode.E, false) 
end


local start = false
local function start()
    spamming = true
    while spamming do
        grab()
        wait(0.1) 
    end
end

local function stop()
    spamming = false
end

tp()


delay(20, stop) 
