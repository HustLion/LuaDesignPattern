describe("Abstract factory", function()
  local factory = {};
  -- dao for databaseAccessObject
  local dao = nil;
  local key = 1;
  local value = "hello";
  setup(function()
    factory = require("../abstractFactory");
  end)

  describe("should generate Access factory and", function()
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

  describe("should generate Sql factory and", function()
    setup(function()
      dao = SqlFactory:new();
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
