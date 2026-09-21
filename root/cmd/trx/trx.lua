local args = { ... }
local arg1 = args[1]
local arg2 = args[2]

function printHelp(command)
    if command == nil
    then
        print("Usage: trx command arguments")
        print("Try 'trx help command' to see specific help")
        print("Commands:")
        print("transmit")
    elseif command == "transmit"
    then
        print("Usage: trx transmit ")
        print("Try 'trx help command' to see help for specific commands")
    end
end

if arg1=="-h" or arg1=="-help" or arg1=="help"
then 
    printHelp(arg2)
end