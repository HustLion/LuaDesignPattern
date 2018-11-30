Director = {}

function Director:new()
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

function Director:Construct(builder)
  if builder ~= nil then
    builder:Coating()
    builder:Engine()
    builder:Radar()
  end
end

Builder = {}

function Builder:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

Product = {}

function Product:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

function Product:Show()
  -- print(self.unit)
  return self.unit;
end

F22Builder = Builder:new()

function F22Builder:new(o)
  o = o or {}
  setmetatable(o, self)	
  self.__index = self
  o.product = Product:new()
  return o
end

function F22Builder:Coating()
  if self.product.unit == nil then
    self.product.unit = "F22:"
  end
  self.product.unit = self.product.unit .. " 隐形涂料"
end

function F22Builder:Engine()
  self.product.unit = self.product.unit .. " 2台 PW发动机"
end

function F22Builder:Radar()
  self.product.unit = self.product.unit .. " 77雷达"
end

function F22Builder:GetProduct()
  return self.product
end

J10Builder = Builder:new()

function J10Builder:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  o.product = Product:new()
  return o
end

function J10Builder:Coating()
  if self.product.unit == nil then
    self.product.unit = "J10:"
  end
  self.product.unit = self.product.unit .. " sss形涂料"
end

function J10Builder:Engine()
  self.product.unit = self.product.unit .. " 1台 PW发动机"
end

function J10Builder:Radar()
  self.product.unit = self.product.unit .. " 66雷达"
end

function J10Builder:GetProduct()
  return self.product
end
