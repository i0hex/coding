-- require("testmodule")

-- print(testmodule.strVar)

-- testmodule.globalfunc()

-- testmodule:memberfunc()

local t = require("testmodule")

print(t.strVar)

t.globalfunc()

t:memberfunc()