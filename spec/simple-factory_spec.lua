describe("basic test", function()
    it("should pass", function()
      local simpleFactory = require("../factoryMethod");
        assert.truthy("yup")
    end)
    it("should throw error if assert false", function()
        assert.falsy("yup")
    end)
end)
