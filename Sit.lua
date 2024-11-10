-- This script makes the player sit when it's run

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Wait for the Humanoid to load
local humanoid = character:WaitForChild("Humanoid")

-- Make the character sit
humanoid.Sit = true
