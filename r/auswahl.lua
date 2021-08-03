local component = require("component")
local term = require("term")

local select = ""

::menu::
term.clear()
print("What you want to controll?")
print("[1] Pc 1")
print("[2] Pc 2")
print("[a] all")
print("[c] Exit")

select = io.read()


if select == "1" then
os.execute("/home/manage/r/1")
end

if select == "2" then
os.execute("/home/manage/r/2")
end

if select == "a" then
os.execute("/home/manage/r/all")
end


if select == "c" then
term.clear()
os.execute("/home/hub")
end