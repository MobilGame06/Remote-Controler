local thread = require "thread"
local proc = thread.create(os.execute, "/s/system")
local proc2 = thread.create(os.execute, "/s/system2")
proc:detach() -- # detach from current process
proc2:detach()
