IUser = {}

function IUser:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

SqlServerUser = IUser:new()

function SqlServerUser:Insert()
	print("在 SQL Server 中给USer表增加一条记录")
end

function SqlServerUser:GetUserRecord()
	print("在 SQL Server 中User表获取一条记录")
end

AccessUser = IUser:new()

function AccessUser:Insert()
	print("在Access中给User表增加一条记录")
end

function AccessUser:GetUserRecord()
	print("在Access中User表获取一条记录")
end

IDepartment = {}

function IDepartment:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

SqlServerDepartment = IDepartment:new()

function SqlServerDepartment:Insert()
	print("在 SQL Server 中给Department表增加一条记录")
end

function SqlServerDepartment:GetDepartmentRecord()
	print("在 SQL Server中Department表获取一条记录")
end

AccessDepartment = IDepartment:new();
AccessDepartment.storage = {};

function AccessDepartment:Insert(key, value)
	print("在 Access 中给Department表增加一条记录")
    self.storage[key] = value;
end

function AccessDepartment:GetRecord(key)
	print("在 Access 中Department表获取一条记录")
    return self.storage[key];
end

IFactory = {}

function IFactory:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

SqlFactory = IFactory:new()

function SqlFactory:GetUser()
	return SqlServerUser:new()
end

function SqlFactory:GetDepartment()
	return SqlServerDepartment:new()
end

AccessFactory = IFactory:new()

function AccessFactory:GetUser()
	return AccessUser:new()
end

function AccessFactory:GetDepartment()
	return AccessDepartment:new()
end

-- choice = io.read()
-- factory = nil
-- if choice == "s" then
-- 	factory = SqlFactory:new()
-- elseif choice == "a" then
-- 	factory = AccessFactory:new()
-- end
--
-- factory = SqlFactory:new()
--
-- if factory ~= nil then
-- 	user = factory:GetUser()
-- 	department = factory:GetDepartment()
--
-- 	user:Insert()
-- 	user:GetUserRecord()
--
-- 	department:Insert()
-- 	department:GetDepartmentRecord()
-- end		
