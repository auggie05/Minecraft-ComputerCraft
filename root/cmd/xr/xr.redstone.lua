local args = { ... }
local channel = tonumber(args[1])
local state = args[2]


local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.open(channel)
modem.transmit(channel, 42, state)