local args = { ... }
local side = args[1]

if side == nil
then print("Error: noArgument. Please add the side you are requesting methods from.")
elseif side ~= "top" or "right" or "left" or "bottom" or "front" or "back"
then print("Error: notSide. Please enter a correct side.")
else
    for i,v in ipairs(peripheral.getMethods(side))
        do print(i.."| "..v)
    end
end