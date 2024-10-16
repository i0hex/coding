file = io.open("test.txt", "w")

io.output(file)

io.write("Hello lua")

io.close(file)

file = io.open("test.txt", "r")

io.input(file)

--[[ 
	- "*n": read and return a number
	- "*a": read all files from current position
	- "*|": read next line and then return nil on EOF(default)
	- <number>: read the specified number of characters of a string, or return nil on EOF
--]]
print(io.read())

io.close(file)

file = io.open("test.txt", "r")

-- Detects if a file handle is available
if io.type(file) then
	print("close file")
	io.close(file)
else
	print("invalid file handle")
end

file = io.open("test.txt", "r")

-- file:seek(whence, offset)
--[[ 
	whence:
	- "set"
	- "cur"
	- "end"
	offset:
	- 0(default)
--]]

print(file:read())

file:close()

for line in io.lines("test.txt") do
	print(line)
end