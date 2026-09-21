local args = { ... }

if args[1]=="down"
then
    for i = 1, args[2] do
        turtle.dig()
        turtle.forward()
        turtle.digUp()
        turtle.digDown()
        turtle.down()
    end
elseif args[1]=="up" --proplems running in to gravel and not digging and just going up. 
then 
    for i = 1, args[2] do
        turtle.digUp()
        turtle.up()
        turtle.dig()
        turtle.digUp()
        turtle.forward()
    end
end

