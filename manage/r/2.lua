local component = require("component")
local term = require("term")
modem = component.modem
local port = 102

::menu::
term.clear()
select = ""
print("What you want to execute")

select = io.read()




if select == "c" then
term.clear()
os.execute("/home/hub/manage/r/auswahl")
else
modem.broadcast(port, select)
goto menu
end
