local password = ""

while password ~= "1234"
    do 
        term.write("Enter password: ")
        password = read()
end
term.clear()
term.setCursorPos(1,1)
print("Logged in.")