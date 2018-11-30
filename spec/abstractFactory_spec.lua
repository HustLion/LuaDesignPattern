describe("Abstract factory", function()
  local factory = {};
  setup(function()
    factory = require("../abstractFactory");
  end)

  describe("should generate Access factory and", function()
    -- dao for databaseAccessObject
    local dao = nil;
    local key = 1;
    local value = "hello";
    setup(function()
      dao = AccessFactory:new();
    end)
    it("provide user table access", function() 
      local dbTable = dao:GetUser();
      dbTable:Insert(key, value);
      assert.is.equal(value, dbTable:GetRecord(key));
    end)
    it("provide department table access", function() 
      local dbTable = dao:GetDepartment();
      dbTable:Insert(key, value);
      assert.is.equal(value, dbTable:GetRecord(key));
    end)
  end)

end)
