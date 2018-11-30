describe("Prototype shallow version", function()
  local prototype = nil;
  setup(function()
    prototype = require("../prototypeShallow");
  end)
  it("should shallow copy objects", function() 
    local sharedValue = 10;
    local sharedValueModified = 123;
    local proto = prototype:new()
    proto.val = sharedValue;

    local clonedProto = proto:Clone()
    assert.is.equal(sharedValue, clonedProto.val);

    clonedProto.val = sharedValueModified;
    assert.is.equal(sharedValueModified, proto.val);
  end)

end)
