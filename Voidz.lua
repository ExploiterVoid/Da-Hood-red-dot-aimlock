 getgenv().keytoclick = "Q"
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = keytoclick
tool.Activated:connect(function()
    local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, keytoclick, false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack
wait(0.2)
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "maz#6798";
Title = "hexxed#3834";
Duration = 10;
});

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Voidz", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "Speed and Fake Macro",
  Callback = function()
          print("button pressed")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/backupspeedtool/main/backupspeedtool", true))()
    end    
})
Tab:AddButton({
  Name = "zombie animation (FE)",
  Callback = function()
          print("button pressed")
          zombie = game:GetService("RunService").Stepped:Connect(function ()
game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=10921344533"
game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=10921345304"
game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=10921351278"
game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=10921350320"
game.Players.LocalPlayer.Character.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=10921343576"
end)
            end    
})

Tab:AddButton({
	Name = "Sun God lock (best)",
	Callback = function()
      		print("button pressed")
  --Made by ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™ğ’ˆ™#3151
--paste discord into discord if u have this script on notepad 
--made by INCIMIST on rblx :)
                
		Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro2/main/ui2"))()
		local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()
		NotifyLib.prompt('Sun God', 'Loading..', 5)
		NotifyLib.prompt('Aimlock loaded', 'Smite them with Q', 5)
		NotifyLib.prompt('Sun God', 'best lock :pray:', 5)


		Settings = {
			rewrittenmain = {
				Enabled = true,
				Key = "q",
				DOT = true,
				AIRSHOT = true,
				NOTIF = true,
				AUTOPRED = false,
				FOV = math.huge,
				RESOVLER = false
			}
		}

		local SelectedPart = "HumanoidRootPart"
		local Prediction = true
		local PredictionValue = 0.1357363


		local AnchorCount = 0
		local MaxAnchor = 50

		local CC = game:GetService"Workspace".CurrentCamera
		local Plr;
		local enabled = false
		local accomidationfactor = 0.136
		local mouse = game.Players.LocalPlayer:GetMouse()
		local placemarker = Instance.new("Part", game.Workspace)

		function makemarker(Parent, Adornee, Color, Size, Size2)
			local e = Instance.new("BillboardGui", Parent)
			e.Name = "PP"
			e.Adornee = Adornee
			e.Size = UDim2.new(Size, Size2, Size, Size2)
			e.AlwaysOnTop = Settings.rewrittenmain.DOT
			local a = Instance.new("Frame", e)
			if Settings.rewrittenmain.DOT == true then
				a.Size = UDim2.new(1, 0, 1, 0)
			else
				a.Size = UDim2.new(0, 0, 0, 0)
			end
			if Settings.rewrittenmain.DOT == true then
				a.Transparency = 0
				a.BackgroundTransparency = 0
			else
				a.Transparency = 1
				a.BackgroundTransparency = 1
			end
			a.BackgroundColor3 = Color
			local g = Instance.new("UICorner", a)
			if Settings.rewrittenmain.DOT == false then
				g.CornerRadius = UDim.new(0, 0)
			else
				g.CornerRadius = UDim.new(1, 1) 
			end
			return(e)
		end


		local data = game.Players:GetPlayers()
		function noob(player)
			local character
			repeat wait() until player.Character
			local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(240, 250, 1), 0.3, 3)
			handler.Name = player.Name
			player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)


			spawn(function()
				while wait() do
					if player.Character then
					end
				end
			end)
		end

		for i = 1, #data do
			if data[i] ~= game.Players.LocalPlayer then
				noob(data[i])
			end
		end

		game.Players.PlayerAdded:connect(function(Player)
			noob(Player)
		end)

		spawn(function()
			placemarker.Anchored = true
			placemarker.CanCollide = false
			if Settings.rewrittenmain.DOT == true then
				placemarker.Size = Vector3.new(8, 8, 8)
			else
				placemarker.Size = Vector3.new(0, 0, 0)
			end
			placemarker.Transparency = 0.50
			if Settings.rewrittenmain.DOT then
				makemarker(placemarker, placemarker, Color3.fromRGB(240, 250, 1), 0.40, 0)
			end
		end)

		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
			if k == Settings.rewrittenmain.Key and Settings.rewrittenmain.Enabled then
				if enabled == true then
					enabled = false
					if Settings.rewrittenmain.NOTIF == true then
						Plr = getClosestPlayerToCursor()
						game.StarterGui:SetCore("SendNotification", {
							Title = "Sun God";
							Text = "Spared Victim",
							Duration = 3
						})
					end
				else
					Plr = getClosestPlayerToCursor()
					enabled = true
					if Settings.rewrittenmain.NOTIF == true then

						game.StarterGui:SetCore("SendNotification", {
							Title = "Sun God";
							Text = "Victim: "..tostring(Plr.Character.Humanoid.DisplayName),
							Duration = 3
						})

					end
				end
			end
		end)



		function getClosestPlayerToCursor()
			local closestPlayer
			local shortestDistance = Settings.rewrittenmain.FOV

			for i, v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
					local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
					local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
					if magnitude < shortestDistance then
						closestPlayer = v
						shortestDistance = magnitude
					end
				end
			end
			return closestPlayer
		end

		local pingvalue = nil;
		local split = nil;
		local ping = nil;

		game:GetService"RunService".Stepped:connect(function()
			if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
				placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
			else
				placemarker.CFrame = CFrame.new(0, 9999, 0)
			end
			if Settings.rewrittenmain.AUTOPRED == true then
				pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
				split = string.split(pingvalue,'(')
				ping = tonumber(split[1])
				if ping < 130 then
					PredictionValue = 0.151
				elseif ping < 125 then
					PredictionValue = 0.149
				elseif ping < 110 then
					PredictionValue = 0.146
				elseif ping < 105 then
					PredictionValue = 0.138
				elseif ping < 90 then
					PredictionValue = 0.136
				elseif ping < 80 then
					PredictionValue = 0.134
				elseif ping < 70 then
					PredictionValue = 0.131
				elseif ping < 60 then
					PredictionValue = 0.1229
				elseif ping < 50 then
					PredictionValue = 0.1225
				elseif ping < 40 then
					PredictionValue = 0.1256
				end
			end
		end)

		local mt = getrawmetatable(game)
		local old = mt.__namecall
		setreadonly(mt, false)
		mt.__namecall = newcclosure(function(...)
			local args = {...}
			if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.rewrittenmain.Enabled and Plr.Character ~= nil then

				-- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
            --[[
            if Settings.rewrittenmain.AIRSHOT == true then
                if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
 
                    --// Airshot
                    args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
 
                else
                    args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
 
                end
            else
                    args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
            end
            ]]
				if Prediction == true then

					args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)

				else

					args[3] = Plr.Character[SelectedPart].Position

				end

				return old(unpack(args))
			end
			return old(...)
		end)

		game:GetService("RunService").RenderStepped:Connect(function()
			if Settings.rewrittenmain.RESOVLER == true and Plr.Character ~= nil and enabled and Settings.rewrittenmain.Enabled then
				if Settings.rewrittenmain.AIRSHOT == true and enabled and Plr.Character ~= nil then

					if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall

						--// Airshot

						--// Anchor Check

						if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
							AnchorCount = AnchorCount + 1
							if AnchorCount >= MaxAnchor then
								Prediction = false
								wait(2)
								AnchorCount = 0;
							end
						else
							Prediction = true
							AnchorCount = 0;
						end

						SelectedPart = "LeftFoot"

					else
						--// Anchor Check

						if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
							AnchorCount = AnchorCount + 1
							if AnchorCount >= MaxAnchor then
								Prediction = false
								wait(2)
								AnchorCount = 0;
							end
						else
							Prediction = true
							AnchorCount = 0;
						end

						SelectedPart = "HumanoidRootPart"

					end
				else

					--// Anchor Check

					if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
						AnchorCount = AnchorCount + 1
						if AnchorCount >= MaxAnchor then
							Prediction = false
							wait(2)
							AnchorCount = 0;
						end
					else
						Prediction = true
						AnchorCount = 0;
					end

					SelectedPart = "HumanoidRootPart"
				end

			else
				SelectedPart = "HumanoidRootPart"
			end
		end)
UICorner_3.Parent = Submit
  	end    
})
Tab:AddButton({
	Name = "CamLock",
	Callback = function()
      		print("button pressed")
 getgenv().AimPart = "HumanoidRootPart" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
getgenv().AimlockKey = "q"
getgenv().AimRadius = 30 
getgenv().ThirdPerson = true 
getgenv().FirstPerson = true
getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
getgenv().PredictionVelocity = 8.8

local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
local Aimlock, MousePressed, CanNotify = true, false, false;
local AimlockTarget;
getgenv().CiazwareUniversalAimbotLoaded = true

getgenv().WorldToViewportPoint = function(P)
    return Camera:WorldToViewportPoint(P)
end

getgenv().WorldToScreenPoint = function(P)
    return Camera.WorldToScreenPoint(Camera, P)
end

getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
        local RayPos = workspace:FindPartOnRay(RNew(
            T[getgenv().AimPart].Position, Client.Character.Head.Position)
        )
        if RayPos then return RayPos:IsDescendantOf(T) end
    end
end

getgenv().GetNearestTarget = function()
    -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
    local players = {}
    local PLAYER_HOLD  = {}
    local DISTANCES = {}
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= Client then
            table.insert(players, v)
        end
    end
    for i, v in pairs(players) do
        if v.Character ~= nil then
            local AIM = v.Character:FindFirstChild("Head")
            if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            end
        end
    end
    
    if unpack(DISTANCES) == nil then
        return nil
    end
    
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > getgenv().AimRadius then
        return nil
    end
    
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end

Mouse.KeyDown:Connect(function(a)
    if a == AimlockKey and AimlockTarget == nil then
        pcall(function()
            if MousePressed ~= true then MousePressed = true end 
            local Target;Target = GetNearestTarget()
            if Target ~= nil then 
                AimlockTarget = Target
            end
        end)
    elseif a == AimlockKey and AimlockTarget ~= nil then
        if AimlockTarget ~= nil then AimlockTarget = nil end
        if MousePressed ~= false then 
            MousePressed = false 
        end
    end
end)
--[[
Mouse.KeyDown:Connect(function(a)
    if a == AimlockToggleKey then
        Aimlock = not Aimlock
    end
end)
]]
RService.RenderStepped:Connect(function()
    if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    end
    if Aimlock == true and MousePressed == true then 
        if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
            if getgenv().FirstPerson == true then
                if CanNotify == true then
                    if getgenv().PredictMovement == true then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                    elseif getgenv().PredictMovement == false then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                    end
                end
            elseif getgenv().ThirdPerson == true then 
                if CanNotify == true then
                    if getgenv().PredictMovement == true then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                    elseif getgenv().PredictMovement == false then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                    end
                end 
            end
        end
    end
end)
 	end    
})