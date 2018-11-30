local Factory = {}
Operation = {}

function Factory:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Operation:new(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

OperationAdd = Operation:new()

function OperationAdd:GetResult()
	if self.numberA and self.numberB then
		return self.numberA + self.numberB
	else
		return "error"
	end
end

FactoryAdd = Factory:new()

function FactoryAdd:CreateOperation()
	return OperationAdd:new()
end

OperationSub = Operation:new()

function OperationSub:GetResult()
	if self.numberA and self.numberB then
		return self.numberA - self.numberB
	else
		return "error"
	end
end

FactorySub = Factory:new()

function FactorySub:CreateOperation()
	return OperationSub:new()
end

OperationMul = Operation:new()

function OperationMul:GetResult()
	if self.numberA and self.numberB then
		return self.numberA * self.numberB
	else
		return "error"
	end
end

FactoryMul = Factory:new()

function FactoryMul:CreateOperation()
	return OperationMul:new()
end

OperationDiv = Operation:new()

function OperationDiv:GetResult()
	if self.numberA and self.numberB then
		return self.numberA / self.numberB
	else
		return "error"
	end
end

FactoryDiv = Factory:new()

function FactoryDiv:CreateOperation()
	return OperationDiv:new()
end

return Factory;
