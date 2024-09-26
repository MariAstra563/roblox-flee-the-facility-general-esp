local user_name = game.Players.LocalPlayer.Name

local rs = game:GetService("RunService")

local function make_highlight(parent, color)
    if parent:FindFirstChild("HighlightA") then
        parent.HighlightA.FillColor = color
        
        return
    end

    local hl = Instance.new("Highlight")

    hl.Name = "HighlightA"
    hl.Parent = parent
    hl.OutlineTransparency = 1
    hl.FillTransparency = 0.25
    hl.FillColor = color
end

rs.RenderStepped:Connect(function()
    for _, plr in pairs(game.Players:GetPlayers()) do
        local char = plr.Character

        if not char then continue end
        if not char:FindFirstChild("Humanoid") then continue end
        if char.Name == user_name then continue end

        if char:FindFirstChild("Hammer") then
            make_highlight(char, Color3.new(1, 0, 0))
        else
            make_highlight(char, Color3.new(0, 1, 0))
        end

        for _, part in pairs(game.Workspace:GetChildren()) do
            if part:IsA("Folder") then
                for _, prop in pairs(part:GetChildren()) do
                    if prop.Name == "ComputerTable" then
                        make_highlight(prop, Color3.new(0, 1, 1))
                    elseif prop.Name == "ExitDoor" then
                        make_highlight(prop, Color3.new(1, 1, 0))
                    elseif prop.Name == "FreezePod" then
                        make_highlight(prop, Color3.new(1, 0, 0.5))
                    end
                end
            end
        end
    end
end)
