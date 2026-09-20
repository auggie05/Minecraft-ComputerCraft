local args = { ... }
local channel = tonumber(args[1])

local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.open(channel)

if modem.isOpen(channel) == true
then print("Opened channel "..channel)
end