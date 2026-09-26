--Create: Power Grid Redstone
--Decides to increase or decrease rheostat.

local rsleft = redstone.getAnalogInput("left")
local rsright = redstone.getAnalogInput("right")

local function rsout(side,strength)
    redstone.setAnalogOutput(side,strength)
end

local function rsupdate()
    if rsleft == 15 and rsright < 15 -- if 119v < v < 121v
    then 
        rsout("front",0)
        rsout("back",0)
        print("State 0")
    elseif rsleft < 15 and rsright < 15 --if lower than 119v
    then 
        rsout("front",15)
        rsout("back",0)
        print("State 1")
    elseif rsleft == 15 and rsright == 15 --if higher than 121v
    then 
        rsout("front",0)
        rsout("back",15)
        print("State 2")
    else
        rsout("front",0)
        rsout("back",0)
        print("Error: Unhandled state.")
    end
end

while true do
    os.pullEvent("redstone")
    rsupdate()
    print("A redstone input has changed!")
end