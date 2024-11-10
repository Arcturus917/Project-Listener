local Players = game:GetService("Players")

-- Function to handle player chat
local function onPlayerChatted(player, message)
    -- Normalize the message to lowercase for easier comparison
    local normalizedMessage = message:lower()

    -- Check if the message is any variation of "sit"
    if normalizedMessage == "sit" or normalizedMessage == "/sit" or normalizedMessage == "!sit" then
        -- Execute the loadstring
        local success, errorMessage = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Arcturus917/Project-Listener/refs/heads/main/Sit.lua"))()
        end)

        -- Handle any errors
        if not success then
            warn("Error loading script: " .. errorMessage)
        end
    end
end

-- Listen for player joining the game and connect the chat event
Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        onPlayerChatted(player, message)
    end)
end)
