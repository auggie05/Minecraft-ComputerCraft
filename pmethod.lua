print("Enter side:")
for i,v in ipairs(peripheral.getMethods(read()))
    do print(i.."| "..v)
end