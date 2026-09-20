local args = { ... }
local channel = args[1]
local reply = args[2]
local message = args[3]

local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.transmit(tonumber(channel), tonumber(reply), message)