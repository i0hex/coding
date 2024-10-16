
testmodule = {}

testmodule.strVar = "this is a string"

function testmodule.globalfunc()
	print("this is a global function")
end

local function func()
	print("this is a local function")
end

function testmodule:memberfunc()
	strVar = "this is new string"
	print(strVar)
end

return testmodule