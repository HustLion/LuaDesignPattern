local DataAcess = {db = "SqlServer"}
-- db: SqlServer or AccessServer

function DataAcess:GetUser()
  local user = nil
  if self.db == "SqlServer" then
    return SqlServerUser:new();
  elseif self.db == "AccessServer" then
    return AccessUser:new();
  end
end

function DataAcess:GetDepartment()
  local user = nil
  if self.db == "SqlServer" then
    return SqlServerDepartment:new();
  elseif self.db == "AccessServer" then
    return AccessDepartment:new();
  end
end

IUser = {}

function IUser:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

SqlServerUser = IUser:new()
SqlServerUser.storage = {};

function SqlServerUser:Insert(key, value)
	-- print("在 SQL Server 中给USer表增加一条记录")
    self.storage[key] = value;
end

function SqlServerUser:GetRecord(key)
	-- print("在 SQL Server 中User表获取一条记录")
    return self.storage[key];
end

AccessUser = IUser:new();
AccessUser.storage = {};

function AccessUser:Insert(key, value)
	-- print("在Access中给User表增加一条记录")
    self.storage[key] = value;
end

function AccessUser:GetRecord(key)
	-- print("在Access中User表获取一条记录")
    return self.storage[key];
end

IDepartment = {}

function IDepartment:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

SqlServerDepartment = IDepartment:new()
SqlServerDepartment.storage = {};

function SqlServerDepartment:Insert(key, value)
	-- print("在 SQL Server 中给Department表增加一条记录")
    self.storage[key] = value;
end

function SqlServerDepartment:GetRecord(key)
	-- print("在 SQL Server中Department表获取一条记录")
    return self.storage[key];
end

AccessDepartment = IDepartment:new();
AccessDepartment.storage = {};

function AccessDepartment:Insert(key, value)
	-- print("在 Access 中给Department表增加一条记录")
    self.storage[key] = value;
end

function AccessDepartment:GetRecord(key)
	-- print("在 Access 中Department表获取一条记录")
    return self.storage[key];
end

return DataAcess;
