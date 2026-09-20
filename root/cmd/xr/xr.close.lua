local args = { ... }
local channel = tonumber(args[1])

local modem = peripheral.find("modem") or error("No modem attached", 0)
modem.close(channel)

if modem.isOpen(channel) ~= true
then print("Closed channel.")
end