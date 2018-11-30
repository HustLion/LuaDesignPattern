describe("Singleton", function()
  local singleton = nil;
  setup(function()
    require("../singleton");
  end)
  it("should return the same instance", function() 
    local s1 = Singleton:Instance();
    local s2 = Singleton:Instance();
    assert.is.equal(s1, s2);
  end)

end)
