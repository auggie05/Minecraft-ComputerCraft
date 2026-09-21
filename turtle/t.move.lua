local args = { ... }
local arg1 = args[1]
local arg2 = args[2]

local function forward()
    while not turtle.forward() do turtle.dig()
    end
end

local function up()
    while not turtle.up() do turtle.digUp()
    end
end

if arg1=="f" or arg1=="forward"
then
    for i=1, arg2 do
        forward()
    end
elseif arg1=="b" or arg1=="back"
then
    for i=1, arg2 do
        turtle.back()
    end
elseif arg1=="u" or arg1=="up"
then
    for i=1, arg2 do
        up()
    end
end