while true do
    for i, o in pairs(game.Workspace:GetChildren()) do
        if o:FindFirstChild("Humanoid") then
            if o.Name ~= game.Players.LocalPlayer.Name then
                if o:FindFirstChild("Hammer") then
                    if o:FindFirstChild("HighlightA") then
                        o.HighlightA:Destroy()
                    end
                    local hl = Instance.new("Highlight")
                    hl.Name = "HighlightA"
                    hl.Parent = o
                    hl.OutlineTransparency = 1
                    hl.FillTransparency = 0.25
                    hl.FillColor = Color3.new(1, 0, 0)
                else
                    if o:FindFirstChild("HighlightA") then
                        o.HighlightA:Destroy()
                    end
                    local hl = Instance.new("Highlight")
                    hl.Name = "HighlightA"
                    hl.Parent = o
                    hl.OutlineTransparency = 1
                    hl.FillTransparency = 0.25
                    hl.FillColor = Color3.new(0, 1, 0)
                end
            end
        end
        for i2, o2 in pairs(o:GetChildren()) do
            if o2.Name == "ComputerTable" then
                if not o2:FindFirstChild("HighlightA") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "HighlightA"
                    hl.Parent = o2
                    hl.OutlineTransparency = 1
                     hl.FillTransparency = 0.25
                    hl.FillColor = Color3.new(0, 0, 1)
                end
            elseif o2.Name == "ExitDoor" then
                if not o2:FindFirstChild("HighlightA") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "HighlightA"
                    hl.Parent = o2
                    hl.OutlineTransparency = 1
                     hl.FillTransparency = 0.25
                    hl.FillColor = Color3.new(1, 1, 0)
                end
            elseif o2.Name == "HidingCloset" then
                if not o2:FindFirstChild("HighlightA") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "HighlightA"
                    hl.Parent = o2
                    hl.OutlineTransparency = 1
                     hl.FillTransparency = 0.25
                    hl.FillColor = Color3.new(0.8, 0.8, 0.8)
                end
            elseif o2.Name == "AirVent" then
                if not o2:FindFirstChild("HighlightA") then
                    local hl = Instance.new("Highlight")
                    hl.Name = "HighlightA"
                    hl.Parent = o2
                    hl.OutlineTransparency = 1
                     hl.FillTransparency = 0.25
                    hl.FillColor = Color3.new(0.8, 0.8, 0.8)
                end
            end
        end
    end
    wait()
end
