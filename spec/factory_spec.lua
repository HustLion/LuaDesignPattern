describe("Factory", function()
  local factory = {};
  setup(function()
    factory = require("../factoryMethod");
  end)

  it("should generate addition factory", function()
    local opFactory = FactoryAdd:new();
    local operation = opFactory:CreateOperation();
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 + 5, operation:GetResult());
  end)
  it("should generate subtraction factory", function()
    local opFactory = FactorySub:new();
    local operation = opFactory:CreateOperation();
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 - 5, operation:GetResult());
  end)
  it("should generate multiplication factory", function()
    local opFactory = FactoryMul:new();
    local operation = opFactory:CreateOperation();
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 * 5, operation:GetResult());
  end)
  it("should generate division factory", function()
    local opFactory = FactoryDiv:new();
    local operation = opFactory:CreateOperation();
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 / 5, operation:GetResult());
  end)
end)
