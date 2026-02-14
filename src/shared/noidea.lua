--!native
--!optimize 2
local game,owner,script=game,owner,script
-- services and functions
local NLS=require(13482937602)()
local servicegetter=function(...) 
return game:GetService(...)
end
-- kill char
local ownerchar=owner.Character 
ownerchar:Destroy()
    owner.CharacterAdded:Connect(function(newownerchar)
pcall(function()
newownerchar:Destroy()
end)
end)
local _0x2931=function() 
--!native
--!optimize 2
--// credits to subterranias / katar
--[[--

	subterranias' personal functions module

	--]]--

local KaetarPersonalFunctions = {}

--//Services
local R_SERV = game:GetService("RunService")
local HTTP_SERV = game:GetService("HttpService")
local USR_SERV = game:GetService("UserService")
local PLR_SERV = game:GetService("Players")

local ModuleStorage = {
	RateLimitTasks = {};
}

KaetarPersonalFunctions.DeltaTime = 1/60
KaetarPersonalFunctions.AnimationDelta = 1/60

--//DATA TYPES
--//number
function KaetarPersonalFunctions:Random(min, max, decimals, seed)
	local random = Random.new()
	if seed ~= nil then
		random = Random.new(seed)
	end

	local evaldecimals = tonumber(`1e{decimals or 0}`)
	local number = random:NextNumber(min or 0, max or 1)

	return math.round(number * evaldecimals) / evaldecimals
end

function KaetarPersonalFunctions:RandomNum(min, max, seed)
	local random = Random.new()
	if seed ~= nil then
		random = Random.new(seed)
	end

	return random:NextNumber(min or 0, max or 1)
end

function KaetarPersonalFunctions:RandomInt(min, max, seed)
	local random = Random.new()
	if seed ~= nil then
		random = Random.new(seed)
	end

	return random:NextInteger(min or 0, max or 1)
end

--//color3
function KaetarPersonalFunctions:Color3Convert(color, to)
	local HSV = Color3.fromHSV(color:ToHSV())
	local R, G, B = HSV.R, HSV.G, HSV.B

	local colorArray = {
		new = Color3.new(R, G, B);
		fromRGB = Color3.fromRGB(R * 0xFF, G * 0xFF, B * 0xFF);
		fromHex = Color3.new(R, G, B):ToHex();
		fromHSV = HSV;
	}

	return colorArray[to] or HSV :: Color3
end

function KaetarPersonalFunctions:Color3Invert(color, progression)
	local R, G, B = color.R, color.G, color.B

	return color:Lerp(Color3.new(1 - R, 1 - G, 1 - B), progression or 1)
end



--//string
function KaetarPersonalFunctions:GenerateUniqueString()
	local basestring = `{HTTP_SERV:GenerateGUID(false)}{os.clock() / tick()}{math.random()}`
	local bytes = basestring:gsub(".",function(c) return utf8.char(utf8.codepoint(c) * math.random(1,4)) end) or basestring

	return bytes
end

function KaetarPersonalFunctions:RandomString(len, min, max)
	local chars = {}

	for i = 1, len or math.random(5,15) do
		local random = math.random(min or 33, max or 12991)
		local char = utf8.char(random)

		table.insert(chars, char)
	end

	return table.concat(chars,"")
end


--//table
function KaetarPersonalFunctions:TableFlip(t)
	local reversedTable = {}
	local itemCount = #t
	for k, v in ipairs(t) do
		reversedTable[itemCount + 1 - k] = v
	end

	return reversedTable
end

function KaetarPersonalFunctions:TableFind(t, element)
	for i,v in t do
		if v == element then
			return i
		end
	end
end

function KaetarPersonalFunctions:TableRemove(t, key)
	local clonedtable = table.pack(table.unpack(t))

	for i,v in t do
		if i == key then
			clonedtable[key] = nil
		end
	end

	return clonedtable
end

function KaetarPersonalFunctions:TableRandom(t, seed)
	local random = Random.new()
	if seed ~= nil then
		random = Random.new(seed)
	end

	local names = {}
	for i,v in t do
		table.insert(names, i)
	end

	return t[names[random:NextInteger(0, #names)]]
end

function KaetarPersonalFunctions:CombineTable(...)
	local newtable = {}

	for _,ctable in table.pack(...) do if typeof(ctable) ~= "table" then continue end
		for _,v in ctable do
			table.insert(newtable,v)
		end
	end

	return newtable
end

function KaetarPersonalFunctions:CloneTable(t)
	local clone = {}
	for i, v in t do
		if typeof(v) == "table" then
			v = self:CloneTable(v)
		end
		clone[i] = v
	end

	return clone
end


--//CFrame
function KaetarPersonalFunctions:IsolateAngles(cframe)
	local ax,ay,az = cframe:ToEulerAnglesXYZ()
	return CFrame.Angles(ax, ay, az)
end

function KaetarPersonalFunctions:GetCFrameAngles(cframe)
	local ax,ay,az = cframe:ToEulerAnglesXYZ()
	return Vector3.new(ax, ay, az)
end

function KaetarPersonalFunctions:GetCFrameOrientation(cframe)
	return Vector3.new(cframe:ToOrientation())
end

--//Vector3
function KaetarPersonalFunctions:NormalizeVector(v3)
	return v3 == v3 and v3 or Vector3.zero
end

--//RBXScriptConnection
function KaetarPersonalFunctions:ForceConnect(baseconnection, ...) --Experimental
	local disconnected = false
	local args = ...

	local function reinit()
		if disconnected then return end

		local force = {}
		force.Connection = baseconnection:Once(reinit, args)

		function force:Disconnect()
			disconnected = true
		end

		return force
	end 

	return reinit()
end

--//INSTANCES
function KaetarPersonalFunctions:GetFlippedDescendants(parent: Instance)
	return self:TableFlip(parent:GetDescendants())
end

function KaetarPersonalFunctions:IsReadOnly(class, property)
	return not pcall(function() local instance = Instance.new(class) instance[property] = instance[property] end)
end	


function KaetarPersonalFunctions:IsRenderedInstance(instance: Instance)
	return pcall(function() local _,_ = instance.CFrame, instance.Size end)
end

function KaetarPersonalFunctions:GetRenderedInstances(parent, recursive)
	local check = recursive and parent:GetDescendants() or parent:GetChildren()
	local instances = {}

	for i,v in check do
		if self:IsRenderedInstance(v) then
			table.insert(instances, v)
		end
	end

	return instances
end

--//Joints
function KaetarPersonalFunctions:C1ToWorldSpace(joint, worldcframe)
	if joint == nil then return end
	return worldcframe:Inverse() * joint.Part0.CFrame * joint.C0
end

--//MISC

function KaetarPersonalFunctions:ErrorResume(...)
	task.spawn(error, ...)
end

function KaetarPersonalFunctions:AssertResume(value, errorMessage)
	if value == nil then
		task.spawn(assert, value, errorMessage)
	end

	return value
end

function KaetarPersonalFunctions:Raycast(pos, dir, distance, ignore, filtertype)
	local raycastParams = RaycastParams.new()
	do raycastParams.FilterDescendantsInstances = ignore or {} raycastParams.FilterType = filtertype or Enum.RaycastFilterType.Exclude end

	local startpos, endpos = pos, dir.Unit * distance
	local result = workspace:Raycast(startpos, endpos, raycastParams)

	if result == nil then
		result = {
			Distance = distance;
			Position = endpos;
			Normal = Vector3.new(0,1,0)
		}
	end

	return result
end

function KaetarPersonalFunctions:RateLimit(taskname, limit)
	local RLT = ModuleStorage["RateLimitTasks"]
	if RLT[taskname] == nil then RLT[taskname] = {os.clock(), 0} end

	if (RLT[taskname][2] + limit) < os.clock() then
		RLT[taskname][2] = os.clock() return true
	end

	return false
end

function KaetarPersonalFunctions:MultiLerp(a, b, t) --//Lerp everything!!! unlimited power!!
	local passedType = typeof(a) == typeof(b) and typeof(a) or nil
	if passedType == nil then 
		return b
	end

	local isinstance = passedType == "Instance"
	local canlerp = pcall(function() local _v = a.Lerp assert(not isinstance and _v) end)
	local cancalculate = pcall(function() local _v = a + b assert(not isinstance and _v) end)

	local output = b
	if canlerp == true then
		output = (a:Lerp(b, t))
	elseif canlerp == false and cancalculate == true then
		output = (a + (b - a) * t)
	else
		output = (t < 1 / 2 and a or b)
	end

	return output
end

function KaetarPersonalFunctions:AnimateLerp(base, j, p, g, t, d)
	j[p] = j[p]:Lerp(base * g, t * ((d or KaetarPersonalFunctions.AnimationDelta) * 60))
end

if R_SERV:IsServer() then
	R_SERV.Heartbeat:Connect(function(DeltaTime) KaetarPersonalFunctions.DeltaTime = DeltaTime end)
elseif R_SERV:IsClient() then
	R_SERV.RenderStepped:Connect(function(DeltaTime) KaetarPersonalFunctions.DeltaTime = DeltaTime end)
end

return KaetarPersonalFunctions
end

-- return kpf so we can use it
local KPF=_0x2931()
local function randomstring()
	return ("."):rep(math.random(32,128)):gsub(".",function() return string.char(math.random(32,128)) end))
end
local globalremotename=randomstring()
-- prepare for the most spaggehti code ever written on the face of the earth
local function createremote()
local remote=Instance.new("RemoteEvent")
remote.Name=globalremotename
remote.Parent=servicegetter("JointsService")
return remote
end
local function refitremote()
local remote=createremote()
	remote.Destroying:Connect(function() refitremote() end)
remote.Destroying:Connect(function() refitremote() end)
return remote
end

refitremote()
-- do something idk
local thereal=Instance.new("Part")
thereal.Parent=nil 
local function forceclone(object, keepobject)
	local m = Instance.new("Model", game)
	local h = Instance.new("Humanoid", m)
	local d = Instance.new("HumanoidDescription", m)

	local class, par = object.ClassName, object.Parent
	object.Parent = d

	h:ApplyDescription(d)
	if(keepobject)then object.Parent = par end

	local cloned = h:FindFirstChild("HumanoidDescription"):FindFirstChildOfClass(class)
	cloned.Parent = nil

	h:Destroy()
	m:Destroy()

	return cloned
end
local function isLocked(object)
	return not pcall(function() type(object.Name) end)
end
local lockdesc = require(16260122956).HumanoidDescription
local function robloxlock(objects, nilobject)
	local cframe, acc = CFrame.new(1e5, 1e5+1.5, 1e5), Instance.new("Accoutrement")
	local handle = Instance.new("Part")
	handle.CFrame, handle.Name, handle.Size = cframe, "Handle", Vector3.one*10
	acc.Name = "Instance"

	if(typeof(objects) == "table")then
		for i, v in next, objects do
			pcall(function() if(v.Name == "Handle")then v.Name = '' end v.Parent = acc end)
		end else objects.Parent = acc
	end

	local h = forceclone(lockdesc, true)
	h.Parent = workspace
	acc.Parent = workspace

	handle.Parent = acc
	handle:SetNetworkOwner(nil)
	handle.AssemblyLinearVelocity = Vector3.new(0,-0.01,0)
	handle.AssemblyAngularVelocity = Vector3.new(0,1e5,0)

	if(nilobject)then
		task.spawn(function()
			if(not isLocked(acc))then
				task.defer(function()
					if(isLocked(acc))then h.Parent = nil end
				end)
				repeat game:GetService("RunService").Heartbeat:Wait() until isLocked(acc)
			end
			h.Parent = nil
		end)

		task.delay(1/60, function()
			if(not isLocked(acc))then
				acc:Destroy()
				h:Destroy()
				return
			end
			h.Parent = nil
		end)
	end

	return h
end
--> sadly im probably never going to finish this
-- probably for the better imo

-- i cant belive i dont know what to do next
-- grrr unfinished i die

