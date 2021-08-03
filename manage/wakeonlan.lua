local component = require("component")
local term = require("term")
modem = component.modem
local port = 100
local select = ""

::menu::
term.clear()
select = ""
print("What you want to start?")
print("[1] NFC Controller")
print("[2] Battery")
print("[3] Control room1")
print("[4] Control room2")
print("[5] Wichtiger MineOS pc (only when openos is running)")
print("[6] Reactor1 Controller")
print("[7] Reactor2 Controller")
print("[a] ALL")
print("[c] Close programm")

select = io.read()

if select == "1" then
modem.broadcast(port, "startdoor")
goto menu
end

if select == "2" then
modem.broadcast(port, "startbattery")
goto menu
end

if select == "3" then
modem.broadcast(port, "controlroom1")
goto menu
end

if select == "4" then
modem.broadcast(port, "controlroom2")
goto menu
end

if select == "5" then
modem.broadcast(port, "startminos")
goto menu
end

if select == "6" then
modem.broadcast(port, "reactor1controler")
goto menu
end

if select == "7" then
modem.broadcast(port, "reactor2controler")
goto menu
end



if select == "a" then
modem.broadcast(port, "startdoor")
modem.broadcast(port, "startbattery")
modem.broadcast(port, "controlroom1")
modem.broadcast(port, "controlroom2")
modem.broadcast(port, "startminos")
modem.broadcast(port, "reactor1controler")
modem.broadcast(port, "reactor2controler")
goto menu
end



if select == "c" then
term.clear()
os.execute("/home/hub")
end