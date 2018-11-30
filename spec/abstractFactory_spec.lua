describe("Abstract factory", function()
  local factory = {};
  setup(function()
    factory = require("../abstractFactory");
  end)

  describe("should generate access factory and", function()
      -- dao for databaseAccessObject
    local dao = nil;
    setup(function()
      dao = AccessFactory:new();
    end)
    it("provides user table access", function() 
      local user = dao:GetUser();
      local key = 1;
      local value = "hello";
      user:Insert(key, value);
      print(user:GetUserRecord(key));
      assert.is.equal(value, user:GetUserRecord(key));
    end)
    it("provides department table access", function() 
      local dbTable = dao:GetDepartment();
      local key = 1;
      local value = "hello";
      dbTable:Insert(key, value);
      assert.is.equal(value, dbTable:GetRecord(key));
    end)
  end)

end)
