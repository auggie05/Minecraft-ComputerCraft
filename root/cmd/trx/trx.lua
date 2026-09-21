local args = { ... }
local arg1 = args[1]
local arg2 = args[2]

function printHelp(command)
    if command == nil
    then
        print("--Help--")
        print("Usage: trx command arguments")
        print("")
        print("Try 'trx help command' to see specific help")
        print("")
        print("Commands:")
        print("transmit")
        print("receiver")
        print("close")
        print("closeAll")
        print("--------")
    elseif command == "transmit"
    then
        print("--Help--")
        print("Usage: trx transmit tx_channel rx_channel message")
        print("")
        print("Transmits a message on tx_channel.")
        print("Sends channel to reply on rx_channel.")
        print("")
        print("tx_channel Transmitting channel.")
        print("rx_channel Channel to send replies to.")
        print("message Message to send.")
        print("--------")
    elseif command == "receiver"
    then
        print("--Help--")
        print("Usage: trx receiver rx_channel")
        print("")
        print("Puts computer into receiver mode.")
        print("Prints incoming messages from rx_channel.")
        print("")
        print("rx_channel Channel to print messages from.")
        print("--------")
    elseif command == "close"
    then 
        print("--Help--")
        print("Usage: trx close channel")
        print("")
        print("Closes the given channel.")
        print("")
        print("channel Channel to close.")
        print("--------")
    elseif command == "closeAll"
    then
        print("--Help--")
        print("Usage: trx closeAll channel")
        print("")
        print("Closes all open channels.")
        print("--------")
    end
end

if arg1=="-h" or arg1=="-help" or arg1=="help"
then 
    printHelp(arg2)
end