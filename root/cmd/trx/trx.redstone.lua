local args = { ... }
local channel = tonumber(args[1])
local state = args[2]


local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.transmit(channel, channel+1, state)