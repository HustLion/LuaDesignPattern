local Prototype = {}

function Prototype:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Prototype:Clone()
	return self
end

return Prototype;
