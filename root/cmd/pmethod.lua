local args = { ... }
local side = args[1]

--local completion = require "cc.shell.completion"

--shell.setCompletionFunction("pmethod.lua", completion.build({completion.choice, {"top","bottom","left","right","front","back"}}))

if side == nil
then 
    term.setTextColor(colors.red)
    print("Err: noArgument. Please add the side you are requesting methods from.")
else 
    for i,v in ipairs(peripheral.getMethods(side))
        do print(i.."| "..v)
    end
end