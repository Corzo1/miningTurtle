-- Get the desired strip mine length from the user
local i = 0

-- Define the main mining function
local function straightUp()
    turtle.dig()
    turtle.forward()
    while turtle.detectUp() do
        -- Dig first block
        turtle.digUp()
        turtle.up()
        turtle.dig()
        turtle.turnLeft()
        turtle.dig()
        turtle.turnLeft()
        turtle.dig()
        turtle.turnLeft()
        turtle.dig()
        turtle.turnLeft()
        i = i + 1
    end
end

straightUp()

for _ = 1, i do
    turtle.down()
end
