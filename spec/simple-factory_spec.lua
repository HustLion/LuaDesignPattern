describe("Simple factory", function()
  local factory = {};
  setup(function()
    factory = require("../simpleFactory");
  end)

  it("should generate addition operation", function()
    local operation = factory:CreateOperation("+");
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 + 5, operation:GetResult());
  end)
  it("should generate subtraction operation", function()
    local operation = factory:CreateOperation("-");
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 - 5, operation:GetResult());
  end)
  it("should generate multiplication operation", function()
    local operation = factory:CreateOperation("*");
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 * 5, operation:GetResult());
  end)
  it("should generate division operation", function()
    local operation = factory:CreateOperation("/");
    operation.numberA = 10;
    operation.numberB = 5;
    assert.is.equal(10 / 5, operation:GetResult());
  end)
end)
