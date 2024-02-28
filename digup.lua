-- Get the desired staircase height from the user
local args = { ... }
local staircaseHeight = tonumber(args[1])

-- Check if the input is valid
if staircaseHeight == nil or staircaseHeight <= 0 then
    print("Invalid input. Please provide a positive number for the staircase height.")
    return
end

-- Define the main function to create the downwards staircase
local function createStaircase(height)
    for i = 1, height do
        -- Dig the top layer and move down
        turtle.digUp()
        turtle.dig()
        turtle.forward()
        turtle.digUp()
        -- Dig the bottom layer and move forward
        turtle.up()
    end
end

-- Call the function to create the staircase
createStaircase(staircaseHeight)

-- Return to the starting position
for _ = 1, staircaseHeight do
    turtle.back()
end
