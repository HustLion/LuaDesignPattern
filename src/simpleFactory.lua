local OperationFactory = {}

local Operation = {}

function Operation:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	o.numberA = 0
	o.numberB = 1
	return o
end

local OperationAdd = Operation:new()

local OperationSub = Operation:new()

local OperationMul = Operation:new()

local OperationDiv = Operation:new()


function OperationAdd:GetResult()
	if self.numberA and self.numberB then
		return self.numberA + self.numberB;
	else
		return "error"
	end
end

function OperationSub:GetResult()
	if self.numberA and self.numberB then
		return self.numberA - self.numberB;
	else
		return "error"
	end
end

function OperationMul:GetResult()
	if self.numberA and self.numberB then
		return self.numberA * self.numberB;
	else
		return "error"
	end
end

function OperationDiv:GetResult()
	if self.numberA and self.numberB then
		return self.numberA / self.numberB;
	else
		return "error"
	end
end

function OperationFactory:CreateOperation(oper)
	if oper == "+" then
		return OperationAdd:new()
	elseif oper == "-" then
		return OperationSub:new()
	elseif oper == "*" then
		return OperationMul:new()
	elseif oper == "/" then
		return OperationDiv:new()
	else
	end
end

return OperationFactory;
