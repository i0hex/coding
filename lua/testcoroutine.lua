local newProductor

function receive()
	local status, value = coroutine.resume(newProductor)
	return value
end

function send(var)
	coroutine.yield(var)
end

function productor()
	local index = 0
	while index < 10 do
		index = index + 1
		send(index)
	end
end

function consumer()
	while coroutine.status(newProductor) ~= "dead" do
		local val = receive()
		print(val)
	end
end

newProductor = coroutine.create(productor)
consumer()