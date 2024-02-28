-- Get the desired strip mine length from the user
local args = { ... }
local stripLength = tonumber(args[1])

-- Check if the input is valid
if stripLength == nil or stripLength <= 0 then
    print("Invalid input. Please provide a positive number for the strip length.")
    return
end

-- Define the main mining function
local function mineStrip(length)
    for i = 1, length do
        -- Dig first block
        turtle.dig()
        turtle.forward()
        turtle.digUp()
    end
end

-- Call the mining function to create the strip mine
mineStrip(stripLength)

-- Return to the starting position
for _ = 1, stripLength do
    turtle.back()
end
