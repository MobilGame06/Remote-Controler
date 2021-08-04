local thread = require "thread"
local proc = thread.create(os.execute, "/home/stop")
local proc2 = thread.create(os.execute, "/home/alarm")
proc:detach() -- # detach from current process