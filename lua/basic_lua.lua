-- This is single line comment

--[[
	There are multiple line comments.
--]]

--[[
	- Don't use underscores plus uppercase letters as identifiers, because Lua's reserved words do the same thing
	- Lua does not allow special characters such as @, $, and % to be used to define identifiers
	- Lua is case sensitive
--]]

-- By default variables are always considered to be global
globalVar = 3

print(globalVar) -- 3

-- When a variable is set to null, the variable is considered deleted
globalVar = nil

print(globalVar) -- nil


--[[ 
	There are 8 basic types in Lua:
	- nil
	- boolean
	- number
	- string
	- function
	- userdata
	- thread
	- table
--]]

print(type(nilVar)) -- nil
print(type(true)) -- boolean
print(type(3)) -- number
print(type("lua")) -- string
print(type(type)) -- function

-- type nil
-- type() returns a string of the corresponding type,so the following occurs:
print(type(nilVar) == nil) -- false
print(type(nilVar) == "nil") -- true

print(type(type(nilVar)) == "string") -- true

-- type boolean
-- There are only two options: true and false.
-- Lua treats false and nil as false, and everything else as true
if false or nil then
	print("At least one of them is true")
else
	print("Both false")
end

if 0 then
	print("true")
else
	print("false")
end

-- type number
-- Lua has only one number type by default, the double type
print(type(3))
print(type(3.14))
print(type(3e2))

-- type string
-- Lua strings are represented by a pair of double or single quotes
print(type("Lua"))
print(type('Lua'))

-- Lua can also use 2 square brackets to represent a piece of text
aPieceOfText = [[
	<h2>Title</h2>
	<p>
		This is a piece of the test
	</p>
	<span>End<span>
]]

print(aPieceOfText)

print("3" + "6") -- 9
print("3" + 6) -- 9
print("3 + 6") -- 3 + 6
-- print("Err" + 1) -- Err

print(#"Lua") -- 3

print(236 .. 890) -- 236890
print("236"..890) -- 236890
print("236".."890") -- 236890

-- type table

local tab = {}
tab[1] = 'hello'
tab[2] = 'lua'
tab['key'] = 'value'
tab[4] = 'eric'

for k, v in pairs(tab) do
	print(k..":"..v)
end

for k, v in ipairs(tab) do
	print(k..":"..v)
end

function maximumOf2Num(first, second)
	if first >= second then
		return first
	else
		return second
	end
end

print(maximumOf2Num(3, 5))

function testFunc(tabVar, procFunc)
	for k, v in pairs(tabVar) do
		print(procFunc(k,v))
	end
end

newTab = { type = "table", data = "info" }

testFunc(newTab, 
function(k, v)
	return k.."="..v
end)

-- global variable
gVar = 3
-- local variable
local var = 3

function func()
	gVar2 = 3
	local var2 = 6
end

func()
print(gVar2, var2) -- 3 nil

do
	local gVar = 6
	var = 6
	print(gVar, var) -- 6 6
end

print(gVar, var) -- 3 6

t = 2
t = t + 1
print(t) -- 3

a, b = 10, 2 * t -- 10 6
print(a, b)

a, b = b, a -- 6 10
print(a, b)

site = {}
site['index'] = 'www.example.com'
print(site['index'])
print(site.index)

a, b = 0, 1
a, b = a + 1, a + 1 -- 1 1
print(a, b)
a, b = b + 1, b + 1 -- 2 2
print(a, b)

index = 1
while(index <= 10)
do
	print(index)
	index = index + 1
end

for i = 10, 1, -1 do
	print(i)
end

index = 1
repeat
	print(index)
	index = index + 1
until(index > 10)