local args = { ... }
local side = args[1]
for i,v in ipairs(peripheral.getMethods(side))
    do print(i.."| "..v)
end