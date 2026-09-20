--trx.receiver 42
--opens channel 42 for replies
--will put computer into receiver mode. cannot run any other programs while this is happening.

local args = { ... }
local reply = args[1]

local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.open(tonumber(reply))
print("Receiving on "..reply)

while true do
    local event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    print(("%d: %s"):format(replyChannel, tostring(message)
    ))
end