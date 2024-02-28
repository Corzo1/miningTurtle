local length = tonumber(arg[1]) -- Read length from the first command line argument, default to 4
local width = tonumber(arg[2])  -- Read width from the second command line argument, default to 4
print(length)
print(width)
-- Function to clear an area of blocks
local function clearArea()
    for l = 1, length do
        for w = 1, width do
            turtle.dig()
            turtle.forward()
        end
        turtle.turnRight()
        for w = 1, width do
            turtle.dig()
            turtle.forward()
        end
    end
end
-- Start clearing the area
clearArea()
