--trx.receiver 42
--opens channel 42 for replies
--will put computer into receiver mode. cannot run any other programs while this is happening.

local args = { ... }
local reply = args[1]

local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.open(tonumber(reply))

local event, side, channel, replyChannel, message, distance
repeat
 event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == reply

print("Received a message:" .. tostring(message))