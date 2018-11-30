describe("Builder", function()
  setup(function()
    require("../builder");
  end)
  it("should build F22", function() 
    theF22Builder = F22Builder:new()
    Director:Construct(theF22Builder)
    F22 = theF22Builder:GetProduct()
    assert.is.equal("F22: 隐形涂料 2台 PW发动机 77雷达", F22:Show());
  end)
  it("should build J10", function() 
    j10Builder = J10Builder:new()
    Director:Construct(j10Builder)
    J10 = j10Builder:GetProduct()
    assert.is.equal("J10: sss形涂料 1台 PW发动机 66雷达", J10:Show());
  end)

end)
