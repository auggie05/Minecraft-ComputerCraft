local args = { ... }
local arg1 = args[1]
local arg2 = args[2]
local arg3 = args[3]
local arg4 = args[4]
local modem = peripheral.find("modem") or error("No modem attached", 0)

--Help Documentation
local function printHelp(command)
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
        print("Usage: trx closeAll")
        print("")
        print("Closes all open channels.")
        print("--------")
    end
end
--End Help Documentation

--Commands
if arg1=="-h" or arg1=="-help" or arg1=="help"
then 
    printHelp(arg2)
elseif arg1=="transmit" or arg1=="send"
then
    if arg2==nil
    then
        term.setTextColor(colors.red)
        print("Error: Missing arguments.")
        print("Use 'trx help' to view help.")
    else
    modem.transmit(tonumber(arg2), tonumber(arg3), arg4)
    end
elseif arg1=="receiver" or arg1=="receive"
then
    if arg2==nil
    then 
        term.setTextColor(colors.red)
        print("Error: Missing arguments.")
        print("Use 'trx help' to view help.")
    else
        modem.open(tonumber(arg2))
        term.clear()
        term.setCursorPos(1,1)
        print("Receiving on "..arg2..". Crtl+T to terminate.")

        while true do
            local event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
            print(("%d: %s"):format(replyChannel, tostring(message)
            ))
        end
end
elseif arg1=="closeAll" or arg1=="closeall"
then
    modem.closeAll()
    print("Closed all channels.")
elseif arg1=="close"
then
    modem.close(tonumber(arg2))
    if modem.isOpen(tonumber(arg2)) ~= true
    then print("Closed channel.")
    end
end
--End Commands