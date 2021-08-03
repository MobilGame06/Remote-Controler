local component = require("component")
local term = require("term")

local select = ""

::menu::
term.clear()
print("What you want to do?")
print("[1] start")
print("[2] stop")
print("[3] remote")
print("[c] Exit")

select = io.read()


if select == "1" then
os.execute("/home/manage/start")
end

if select == "2" then
os.execute("/home/manage/stop")
end

if select == "3" then
os.execute("/home/manage/r/auswahl")
end

if select == "c" then
term.clear()
os.exit()
end