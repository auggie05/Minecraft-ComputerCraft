local args = { ... }
local side = args[1]

if side == nil
then print("Err: noArgument. Please add the side you are requesting methods from.")
else 
    for i,v in ipairs(peripheral.getMethods(side))
        do print(i.."| "..v)
    end
end