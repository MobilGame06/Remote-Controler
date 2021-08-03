local component = require("component")
local term = require("term")
modem = component.modem
local port = 100
local select = ""

::menu::
term.clear()
select = ""
print("What you want to stop?")
print("[1] Pc 1")
print("[2] Pc 2")
print("[a] ALL")
print("[c] Close programm")

select = io.read()

if select == "1" then
modem.broadcast(port, "stop1")
goto menu
end

if select == "2" then
modem.broadcast(port, "stop2")
goto menu
end

if select == "a" then
modem.broadcast(port, "stop1")
modem.broadcast(port, "stop2")
goto menu
end




if select == "c" then
term.clear()
os.execute("/home/hub")
end
