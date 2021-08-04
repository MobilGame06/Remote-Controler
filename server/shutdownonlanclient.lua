local component = require("component")
local term = require("term")
local event = require("event")
local computer = require("computer")
local keyboard = require("keyboard")
modem = component.modem
local port = 100


modem.open(port)

while true do
local type, _, _, _, _, message = event.pull(2, "modem")
if type == "modem_message" and message == "stop1" then
 computer.shutdown()
end
end