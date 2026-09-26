--Create: Power Grid Redstone
--Reads Voltage in Tens
--Decides if it needs to increase or decrease a Rheostat.

local rsback = redstone.getAnalogInput("back")

while true do
    if rsback > 12
        then redstone.setOutput("left",true)
            redstone.setOutput("right",false)
    elseif rsback < 12
        then redstone.setOutput("right",true)
            redstone.setOutput("left",false)
    end
end