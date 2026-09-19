local args = { ... }
local id = args[1]
local state = args[2]

if id == 1 and state == "clear"
then
    shell.run("redstone","set","back","true")
else
    shell.run("redstone","set","back","false")
end
