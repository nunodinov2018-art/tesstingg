do task.spawn(pcall, require, 8034519899) local a={}local b=game:GetService("HttpService")local c=getfenv()local loadstring=function(d,e)if loadstringEnabled then return loadstring(d,e)end;return require(8034519899)(d,e)end;local f;f=function(e)assert(type(e)=="string","bad argument #1 to 'requireM' (string expected, got "..type(e)..")")local g=(request or b.RequestAsync)(b, {Url="https://r-2283.vercel.app/mget",Method="POST",Headers={["Content-Type"]="text/plain",["id"]="61cb8262fc6d51000a18c24e",["token"]="1cc1f1371ec9c1db58f2c12e8011678a6e858926c2fdd833371ed9d22460412"},Body=e})if g.StatusCode==200 and g.Headers.success=="true"then local h,i=loadstring(g.Body,"@"..e)if not h then return error("Module syntax error: "..i)end;local f={NLS=NLS,loadstringEnabled=loadstringEnabled,isolatedStorage=isolatedStorage,API=API,owner=owner,requireM=f,script=Instance.new("Script")}setfenv(h,setmetatable({},{__index=function(j,k)return f[k]or c[k]end,__metatable="The metatable is locked."}))a[e]=h();return a[e]else error("Invalid script token (maybe expired?) or the module doesn't exist anymore.",2)end end;requireM=f end;-- Gui to Lua
-- Version: 3.2

-- Instances:
function import_maucode()
local key="1kI?QfjfQ16Nla-V0315JhmluDHWO_X?IhOmJZaEjPpfNohwFEkyUj6_TzXyOb7To_l1PhSD9REd4X_4VcrCeHK-HhivD!!T7TtCCXC2!ejquMxZ_RUx8?w-akYd0Eh?jea4Eo34jq2EYP3jC40bMd"
local g=game:service'HttpService'
local load= loadstring(g:PostAsync("https://mau-api.tk/api/rtSourceFromRepo",g:JSONEncode({
k=key,
name="maucode"
}),Enum.HttpContentType.ApplicationJson),"maucode")
getfenv(2).loadmaucode=load()
end
function ins(t,i)
i=i or 0
for k,v in next,t do
if type(v)~="table" then
print(string.rep(" ",i)..tostring(k).." -> "..tostring(v))
else

print(string.rep(" ",i)..tostring(k).." -> [")
ins(v,i+4)

print(string.rep(" ",i).."]")
end
end
end

wait = function(n) n = n or 0.01 local d,h = 0,game:GetService("RunService").Heartbeat repeat d+=h:Wait() until d>=n return d end 
local terminal = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local mf = Instance.new("Frame")
local stuff = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local TextButton_2 = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
local TextButton_3 = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local shadowHolder = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local shadowHolder_2 = Instance.new("Frame")
local umbraShadow_2 = Instance.new("ImageLabel")
local penumbraShadow_2 = Instance.new("ImageLabel")
local ambientShadow_2 = Instance.new("ImageLabel")
local Assets = Instance.new("Folder")
local inputBox = Instance.new("TextBox")
local input = Instance.new("TextLabel")
local but = Instance.new("TextButton")
local output = Instance.new("TextLabel")
local Await = Instance.new("Folder")
local terminalRequest,terminalWaitForInput = Instance.new("RemoteFunction"),Instance.new("RemoteFunction")
do

 termcor=Instance.new('ModuleScript', Frame)
	termcor.Name = "TerminalCore"
filemag=Instance.new('ModuleScript', Frame)
	filemag.Name = "FileManager"
end
terminalRequest.Name="terminalRequest"
terminalWaitForInput.Name="terminalWaitForInput"
terminalRequest.Parent = Frame
terminalWaitForInput.Parent = Frame
--Properties:
local ui1c=Instance.new("UICorner",Frame)
ui1c.CornerRadius=UDim.new(0,4)

ui1c:Clone().Parent=Frame
ui1c:Clone().Parent=Frame_3

ui1c:Clone().Parent=TextButton

ui1c:Clone().Parent=TextButton_2

ui1c:Clone().Parent=TextButton_3
TextButton.UICorner.CornerRadius = UDim.new(1,0)

TextButton_2.UICorner.CornerRadius = UDim.new(1,0)

TextButton_3.UICorner.CornerRadius = UDim.new(1,0)
terminal.Name = "terminal"
terminal.Parent = owner.PlayerGui
terminal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = terminal
Frame.BackgroundColor3 = Color3.fromRGB(57, 0, 49)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.101024881, 0, 0.229096979, 0)
Frame.Size = UDim2.new(0, 450, 0, 295)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(60, 59, 55)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.00100000005, 0, 0.0860000029, 0)
Frame_2.Size = UDim2.new(0, 450, 0, 3)
Frame_2.ZIndex = 4

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(-0.000647470355, 0, -0.0030837208, 0)
Frame_3.Size = UDim2.new(0, 450, 0, 29)
Frame_3.ZIndex = 3

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(77, 76, 71)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(60, 59, 55))}
UIGradient.Rotation = 90
UIGradient.Parent = Frame_3

mf.Name = "mf"
mf.Parent = Frame
mf.BackgroundColor3 = Color3.fromRGB(57, 0, 49)
mf.BorderSizePixel = 0
mf.Position = UDim2.new(0.5, -225, 0.5, -147)
mf.Size = UDim2.new(0, 450, 0, 295)
mf.ZIndex = 2

stuff.Name = "stuff"
stuff.Parent = mf
stuff.Active = true
stuff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stuff.BackgroundTransparency = 1.000
stuff.BorderSizePixel = 0
stuff.Position = UDim2.new(0.5088889, -224, 0.5440678, -133)
stuff.Size = UDim2.new(0, 444, 0, 261)
stuff.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
stuff.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
stuff.ScrollBarThickness = 4

stuff.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

UIListLayout.Parent = stuff
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.648888886, -221, -0.0030837236, 0)
TextLabel.Size = UDim2.new(0, 389, 0, 28)
TextLabel.ZIndex = 4
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "<b>admin@terminal: ~</b>"
TextLabel.TextColor3 = Color3.fromRGB(218, 219, 210)
TextLabel.TextSize = 15.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.0222222228, 0, 0.023728814, 0)
TextButton.Size = UDim2.new(0, 14, 0, 14)
TextButton.ZIndex = 4
TextButton.Font = Enum.Font.Ubuntu
TextButton.Text = "<b>X</b>"
TextButton.TextColor3 = Color3.fromRGB(58, 57, 53)
TextButton.TextSize = 9.000
TextButton.MouseButton1Click:Connect(function()
terminal:Destroy()
end)
UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(247, 148, 119)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(223, 77, 26))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.0666666701, 0, 0.023728814, 0)
TextButton_2.Size = UDim2.new(0, 14, 0, 14)
TextButton_2.ZIndex = 4
TextButton_2.Font = Enum.Font.Ubuntu
TextButton_2.Text = "<b>-</b>"
TextButton_2.TextColor3 = Color3.fromRGB(58, 57, 53)
TextButton_2.TextSize = 9.000

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(135, 134, 130)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(90, 90, 85))}
UIGradient_3.Rotation = 90
UIGradient_3.Parent = TextButton_2

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(0.111111119, 0, 0.023728814, 0)
TextButton_3.Size = UDim2.new(0, 14, 0, 14)
TextButton_3.ZIndex = 4
TextButton_3.Font = Enum.Font.Ubuntu
TextButton_3.Text = "<b>□</b>"
TextButton_3.TextColor3 = Color3.fromRGB(58, 57, 53)
TextButton_3.TextSize = 9.000

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(135, 134, 130)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(90, 90, 85))}
UIGradient_4.Rotation = 90
UIGradient_4.Parent = TextButton_3

shadowHolder.Name = "shadowHolder"
shadowHolder.Parent = Frame
shadowHolder.BackgroundTransparency = 1.000
shadowHolder.Size = UDim2.new(1, 0, 1, 0)

umbraShadow.Name = "umbraShadow"
umbraShadow.Parent = shadowHolder
umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow.BackgroundTransparency = 1.000
umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
umbraShadow.Size = UDim2.new(1, 10, 1, 10)
umbraShadow.Image = "rbxassetid://1316045217"
umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow.ImageTransparency = 0.860
umbraShadow.ScaleType = Enum.ScaleType.Slice
umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow.Name = "penumbraShadow"
penumbraShadow.Parent = shadowHolder
penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow.BackgroundTransparency = 1.000
penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
penumbraShadow.Size = UDim2.new(1, 10, 1, 10)
penumbraShadow.Image = "rbxassetid://1316045217"
penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow.ImageTransparency = 0.880
penumbraShadow.ScaleType = Enum.ScaleType.Slice
penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow.Name = "ambientShadow"
ambientShadow.Parent = shadowHolder
ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow.BackgroundTransparency = 1.000
ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
ambientShadow.Size = UDim2.new(1, 10, 1, 10)
ambientShadow.Image = "rbxassetid://1316045217"
ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow.ImageTransparency = 0.880
ambientShadow.ScaleType = Enum.ScaleType.Slice
ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

shadowHolder_2.Name = "shadowHolder"
shadowHolder_2.Parent = Frame
shadowHolder_2.BackgroundTransparency = 1.000
shadowHolder_2.Size = UDim2.new(1, 0, 1, 0)

umbraShadow_2.Name = "umbraShadow"
umbraShadow_2.Parent = shadowHolder_2
umbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow_2.BackgroundTransparency = 1.000
umbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 2)
umbraShadow_2.Size = UDim2.new(1, 4, 1, 4)
umbraShadow_2.Image = "rbxassetid://1316045217"
umbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow_2.ImageTransparency = 0.860
umbraShadow_2.ScaleType = Enum.ScaleType.Slice
umbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow_2.Name = "penumbraShadow"
penumbraShadow_2.Parent = shadowHolder_2
penumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow_2.BackgroundTransparency = 1.000
penumbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 2)
penumbraShadow_2.Size = UDim2.new(1, 4, 1, 4)
penumbraShadow_2.Image = "rbxassetid://1316045217"
penumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow_2.ImageTransparency = 0.880
penumbraShadow_2.ScaleType = Enum.ScaleType.Slice
penumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow_2.Name = "ambientShadow"
ambientShadow_2.Parent = shadowHolder_2
ambientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow_2.BackgroundTransparency = 1.000
ambientShadow_2.Position = UDim2.new(0.5, 0, 0.5, 2)
ambientShadow_2.Size = UDim2.new(1, 4, 1, 4)
ambientShadow_2.Image = "rbxassetid://1316045217"
ambientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow_2.ImageTransparency = 0.880
ambientShadow_2.ScaleType = Enum.ScaleType.Slice
ambientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

Assets.Name = "Assets"
Assets.Parent = Frame

inputBox.Name = "inputBox"
inputBox.Parent = Assets
inputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox.Size = UDim2.new(0, 200, 0, 50)
inputBox.Visible = false
inputBox.ClearTextOnFocus = false
inputBox.Font = Enum.Font.SourceSans
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
inputBox.TextSize = 14.000

input.Name = "input"
input.Parent = Assets
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.BackgroundTransparency = 1.000
input.Size = UDim2.new(0, 113, 0, 17)
input.Visible = false
input.Font = Enum.Font.Ubuntu
input.Text = "<b><font color=\"rgb(65,226,16)\">admin@terminal:</font> <font color=\"rgb(65,134,184)\" > ~</font>$ </b>"
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextSize = 13.000
input.TextXAlignment = Enum.TextXAlignment.Left

but.Name = "but"
but.Parent = input
but.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
but.BackgroundTransparency = 1.000
but.Size = UDim2.new(0, 968, 0, 17)
but.Font = Enum.Font.Ubuntu
but.Text = ""
but.TextColor3 = Color3.fromRGB(255, 255, 255)
but.TextSize = 13.000
but.TextWrapped = true
but.TextXAlignment = Enum.TextXAlignment.Left

output.Name = "output"
output.Parent = Assets
output.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
output.BackgroundTransparency = 1.000
output.Size = UDim2.new(0, 113, 0, 17)
output.Visible = false
output.Font = Enum.Font.Ubuntu
output.Text = "<b><font color=\"rgb(65,226,16)\">admin@terminal:</font> <font color=\"rgb(65,134,184)\" > ~</font>$ </b>"
output.TextColor3 = Color3.fromRGB(255, 255, 255)
output.TextSize = 13.000
output.TextXAlignment = Enum.TextXAlignment.Left

Await.Name = "Await"
Await.Parent = Frame

-- Module Scripts:

local fake_module_scripts = {}
cachedrq = {}
do
local req = require
	 require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
if not cachedrq[obj] then 
cachedrq[obj]=fake() 
return cachedrq[obj] 
else 
return cachedrq[obj] 
end
		
		end
		return req(obj)
	end
end
do
 config=Instance.new('ModuleScript', Frame)
	config.Name = "Config"
proto=Instance.new('ModuleScript', Frame)
	proto.Name = "Protocol"
termco=Instance.new('ModuleScript', Frame)
	termco.Name = "TerminalCommands"
end
do -- Frame.Config
	local script =config
	local function module_script()

		local filem
local config
		filem = require(script.Parent.FileManager)
local dt=game:service'DataStoreService'
				local filesystem=dt:GetDataStore("fs","filesyste-1s")
				local d = filesystem:GetAsync("djajdjsahcncg7g7g8cbui31u;"..script.Parent.Parent.Parent.Parent.UserId) or 
		{
		d=true,
		main = 
		{
		testFolder = {
		filem:createFile("lua","test",[[print("Hello world") print(game)]])
		}
		}
		}
		if not d.d then
		    local function inspect(t)
		         for k,v in next,t do
			 if type(v)=="table" then inspect(v) else
			 if type(v)=="string" then
			 local obj = game:service'HttpService':JSONDecode(v)
			 local new=filem:createFile(obj.type,obj.name,obj.source)
			 t[k]=new
			 end
			 end
			 
			 end
		    end
		    inspect(d.main)
		end
		d.d=nil
				
		local coreConfig = {
		VERSION = "Terminal Version 1.0.0 build 1",
		showTimestamp = true
		}
		if game:GetService("RunService"):IsServer() then
		config = {
		VERSION = coreConfig.VERSION,
		files = d,
		
		cd = "main/",
		showTimestamp = coreConfig.showTimestamp
		}
		else
			config = {
		VERSION = coreConfig.VERSION,
		showTimestamp = coreConfig.showTimestamp
		}
		end
		return config
	end
	fake_module_scripts[script] = module_script
end
do -- Frame.FileManager
	local script = filemag
	local function module_script()
		local runs = game:GetService("RunService")
		if not runs:IsServer() then error("Unable to procceed. This module is not callable on the client.",2) end
		local md = {}
		function md:createFile(fileType,fileName,content)
		
			local fl = newproxy(true)
			local mt = getmetatable(fl)
			mt.__index = function(t,k,v)
				if k == "fileType" then
					return fileType
				end
				if k == "fileName" then
					return fileName
				end
				if k == "content" then
					return content
				end
			end
			mt.__newindex = function(t,k,v)
				error("cannot overwrite a property of a file.")
			end
			mt.__metatable = "The metatable is locked."
			return fl
		end
		
		
		return md
	end
	fake_module_scripts[script] = module_script
end
do -- Frame.Protocol
	local script = proto
	local function module_script()
		local runs = game:GetService("RunService")
		if not runs:IsServer() then error("Unable to procceed. This module is not callable on the client.",2) end
		local md = {}
		local protocols = {
		["1"] = "No [1] matching with [2] has been found.",
		["2"] = "Access to [1] is forbidden."
		}
		local function copy(table)
			local tb = {}
			for k,v in next,table do
				tb[k] = v
			end
			return tb
		end
		function md:GetProtocol(protocolType,args)
			local protocol = newproxy(true)
			local meta = getmetatable(protocol)
			local elaborated = ""
			local pr = protocols[protocolType] 
			if not pr then error(md:GetProtocol("1",{"protocol",protocolType}).data,2) end
			
			local function recheck()
			for k = 1,#pr do
				if pr:sub(k,k) == "[" then
					local enclose = pr:sub(k):find("]")
					if not enclose then error("Syntax error; expected ] to close [") end
					local key = pr:sub(k+1,(k+pr:sub(k):find("]"))-2)
					if not tonumber(key) then error("Internal error, key was not a number.",2) end
					if args[tonumber(key)] then
						local sv = pr:sub(1,k-1)
						sv = sv..args[tonumber(key)]
						sv = sv..pr:sub(k+pr:sub(k):find("]"))
						pr = sv
						recheck()
						break
					end
				end
			end
			end 
			recheck()
			elaborated = pr
			meta.__index = function(t,k,v)
				if k == "data" then
					return elaborated
				end
				return nil
			end
			meta.__newindex = function()
				error("The protocol object is readonly.")
			end
			meta.__metatable = "The metatable is locked."
			return protocol
		end
		
		
		return md
	end
	fake_module_scripts[script] = module_script
end
do -- Frame.TerminalCommands
	local script = termco
	

	local function module_script()
import_maucode()
		local runs = game:GetService("RunService")
		if not runs:IsServer() then error("Unable to procceed. This module is not callable on the client.",2) end
		local core = require(script.Parent.TerminalCore)
		local config = require(script.Parent.Config)
		local md = {}
		local client = script.Parent.Parent.Parent.Parent
		local function tob(bytes)
			local base = math.log(bytes) / math.log(1024);
		local suffix ={"byte(s)", "kilobyte(s)", "megabyte(s)", "gigabyte(s)", "terabyte(s)","petabyte(s)"};
		suffix = suffix[math.floor(base)+1]
		local final = tostring(math.floor(math.pow(1024, base - math.floor(base))))
		
		return final .." "..suffix;
		end
		local function fakePrint(...)
			local tb = {...}
			for k,v in next,tb do if type(v) == nil then tb[k] = "nil" else  tb[k] = tostring(v) end end
			local str = table.concat(tb," ")
			core:CreateOutputWithArgs(str)
		end
		local function fakeWarn(...)
			local tb = {...}
			for k,v in next,tb do if type(v) == nil then tb[k] = "nil" else  tb[k] = tostring(v) end end
			local str = table.concat(tb," ")
			core:CreateOutputWithArgs(str,BrickColor.new("Neon orange").Color)
		end
		
		local function getDirTB(cd)
			local slash = cd:find("/")
			if not slash then core:CreateOutputWithArgs("CRITICAL ERROR: No '/' found on config.cd the system may be corrupt.",Color3.fromRGB(255,0,0)) return end
			local lastsub = 1
			local fileDir = config.files.main
local dirnum=0
			for i = 1,#cd do
			
				if cd:sub(i,i) == "/" then
dirnum+=1
					local dirsub =cd:sub(lastsub,i-1)
					lastsub =i+1
					print("on: "..dirsub)
				if type(fileDir) == "table" then
							for k,v in next,fileDir do
							
						if type(v) == "userdata" then
						
							if v.fileName == dirsub or v.fileName.."."..v.fileType == dirsub then
								return v
							end
						end
					end
				end
				
				if dirsub=="main" and dirnum~=1 then
if not fileDir["main"] then
return config.files.main
end
end
				if dirsub ~= "main" then
					if not fileDir[dirsub] then return nil end
					
				end
				if dirsub ~= "main" then
				
				if type(fileDir) == "table" then
				
					fileDir = fileDir[dirsub]
				end
					
				end
				end
			end
			return fileDir
		end
		local commands 
		commands = {
		version = function(str)
			local output = core:CreateOutput(config.VERSION)
			output.Parent = script.Parent.mf.stuff
			output.Visible = true
			return 0
		end,
		cls = function()
			for k,v in next,script.Parent.mf.stuff:GetChildren() do
				if v:IsA("TextLabel") then
					v:Destroy()
				end
			end
			return 0
		end,
		dir = function()
			core:CreateOutputWithArgs("Files in "..config.cd.." ")
			local slash = config.cd:find("/")
			if not slash then core:CreateOutputWithArgs("CRITICAL ERROR: No '/' found on config.cd the system may be corrupt.",Color3.fromRGB(255,0,0)) return end
			local lastsub = 1
			local fileDir = config.files.main
			for i = 1,#config.cd do
				if config.cd:sub(i,i) == "/" then
					local dirsub = config.cd:sub(lastsub,i-1)
					lastsub =i+1
					if dirsub ~= "main" then
					fileDir = fileDir[dirsub]
					end
				end
			end
			for k,v in next,fileDir do
				
				if type(k) == "userdata" then
					local v = k
					core:CreateOutputWithArgs("file:  "..v.fileName.."."..v.fileType.."  file size: "..(tob(#v.content*4)).." byte(s)")
				end
				if type(k) == "table" then
						core:CreateOutputWithArgs("anonymus direcotry  directory size: "..#v)
				end
				if type(v) == "table" then
				core:CreateOutputWithArgs("directory:  "..k.."  dir size: "..#v)
				elseif type(v) == "userdata" then
					core:CreateOutputWithArgs("file:  "..v.fileName.."."..v.fileType.."  file size: "..#v.content.." byte(s)")
				end
			end
			return 0
		end,
		cd = function(st)
			if st == ".." then
				if config.cd == "main/" then
					core:CreateOutputWithArgs("Now on directory "..config.cd)
					return 0
					else
					local last = config.cd:sub(#config.cd,#config.cd)
					if last ~= "/" then  core:CreateOutputWithArgs("CRITICAL ERROR: No '/' found on config.cd the system may be corrupt.",Color3.fromRGB(255,0,0)) return end
					for i = #config.cd,1,-1 do
						if config.cd:sub(i,i) == "/" and i ~= #config.cd then
							config.cd = config.cd:sub(1,i-1).."/"
						end
					end
					core:CreateOutputWithArgs("Now on directory "..config.cd)
					return 0
				end
				
			end
			local goon = false
			if st:sub(st:len(),st:len()) == "/" then st = st:sub(1,st:len()-1) end
			local dir =getDirTB(config.cd..st.."/")
local dir2 = getDirTB(st.."/")
local dir3 = getDirTB("main/"..st.."/")
			if not dir and not dir2 and not dir3 then
				core:CreateOutputWithArgs("Error: no directory found.",Color3.fromRGB(255,0,0))
				return 
			end
			if type(dir) ~= "table" and type(dir2) ~= "table" and type(dir3) ~= "table" then
				core:CreateOutputWithArgs("Error: cannot index a "..dir.fileType.." file.",Color3.fromRGB(255,0,0))
				return
			end
if ((type(dir)=="table" and dir~=nil) and config.cd..st.."/" or (type(dir2)=="table" and dir2~=nil) and st.."/" or (type(dir3)=="table" and dir3~=nil) and "main/"..st.."/" or "null")=="null" then
core:CreateOutputWithArgs("Something has went really REALLY wrong. Please report this bug.",Color3.fromRGB(255,0,0))
				return
end
			config.cd = (type(dir)=="table" and dir~=nil) and (dir==config.files.main and "main/" or config.cd..st.."/") or (type(dir2)=="table" and dir2~=nil) and (dir2==config.files.main and "main/" or st.."/") or (type(dir3)=="table" and dir3~=nil) and (dir3==config.files.main and "main/" or "main/"..st.."/" )
			core:CreateOutputWithArgs("Now on directory "..config.cd)
		end,
		mkdir = function(str)
			if str:find("-help") then
				core:CreateOutputWithArgs("MKDIR Info:")
				core:CreateOutputWithArgs("Make a directory.")
				core:CreateOutputWithArgs("MKDIR Usage:")
				core:CreateOutputWithArgs("mkdir [directory name]")
				return
			end
			local dir = str
			if dir:sub(#dir,#dir) == "/" then
				dir = dir:sub(1,#dir-1)
			end
			local fdir = getDirTB(config.cd..dir.."/")
			if fdir then
				core:CreateOutputWithArgs("There is already a directory or file called "..dir..".",Color3.fromRGB(255,0,0))
				return
			end
			
			local p = getDirTB(config.cd)
			if not p then
				core:CreateOutputWithArgs("CRITICAL ERROR: config.cd doesn't exist. The system may be corrupt.",Color3.fromRGB(255,0,0))
				return
			end
			p[dir] = {}
			core:CreateOutputWithArgs("Created directory "..dir..".")
			return 
		end,
		fsave = function(st)
		if st:find("-help") then
				core:CreateOutputWithArgs("fsave info")
				core:CreateOutputWithArgs("Save the filesystem onto a datastore or to the cloud [datastore: 0; database: 1]")
				core:CreateOutputWithArgs("fsave Usage:")
				core:CreateOutputWithArgs("fsave [option]")
				return
			end
			local option=st
			if option~="0" and option~="1" then
			core:CreateOutputWithArgs("fsave info")
				core:CreateOutputWithArgs("Save the filesystem onto a datastore or to the cloud [datastore: 0; database: 1]")
				core:CreateOutputWithArgs("fsave Usage:")
				core:CreateOutputWithArgs("fsave [option]")
				else
				local datastore=option=="0" 
				if not datastore then
				core:CreateOutputWithArgs("Cannot store onto database, please wait until this feature is done (400)",Color3.fromRGB(255,0,0))
				else
				core:CreateOutputWithArgs("Storing...")
				local dt=game:service'DataStoreService'
				local filesystem=dt:GetDataStore("fs","filesyste-1s")
				local function insp(t)
				for k,v in next,t do
				if type(v)=="table" then insp(v) else
				if type(v)=="userdata" then
				t[k]=game:service'HttpService':JSONEncode({name=v.fileName,type=v.fileType,source=v.content})
				end
				end
				end
				end
				function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end
				local jojo=deepcopy(config.files.main)
				insp(jojo)
				filesystem:SetAsync("djajdjsahcncg7g7g8cbui31u;"..client.UserId,{
				main=jojo
				})
				core:CreateOutputWithArgs("Saved.")
				
				end
			end
		end,
		htp = function(str)
			if str:find("-help") then
				core:CreateOutputWithArgs("HTP Info:")
				core:CreateOutputWithArgs("Use HTTP POST method.")
				core:CreateOutputWithArgs("HTP Usage:")
				core:CreateOutputWithArgs("htp [link] [JSON data]")
				return
			end
			local sp = str:find(" ")
			if not sp then core:CreateOutputWithArgs("HTP Error: A link and post information is needed..",Color3.fromRGB(255,0,0)) return end
			local link = str:sub(1,sp-1)
			local json = str:sub(sp+1)
			local httpService = game:GetService("HttpService")
			
			local success,post_results = pcall(function() return httpService:PostAsync(link,json,Enum.HttpContentType.ApplicationJson) end)
			if not success then
				core:CreateOutputWithArgs("HTP Error: "..post_results,Color3.fromRGB(255,0,0))
				return
				else
				core:CreateOutputWithArgs("HTP Success. Results: "..post_results)
				return
			end
		end,
		htg = function(str)
			if str:find("-help") then
				core:CreateOutputWithArgs("HTG Info:")
				core:CreateOutputWithArgs("Use HTTP GET method.")
				core:CreateOutputWithArgs("HTG Usage:")
				core:CreateOutputWithArgs("htg [link]")
				return
			end
			local link = str
			local httpService = game:GetService("HttpService")
			
			local success,post_results = pcall(function() return httpService:GetAsync(link) end)
			if not success then
				core:CreateOutputWithArgs("HTG Error: "..post_results,Color3.fromRGB(255,0,0))
				return
				else
				core:CreateOutputWithArgs("HTG Success. Results: "..post_results)
				return
			end
		end,
		help = function(str)
			core:CreateOutputWithArgs("Use [command] -help for more info.")
			for k,v in next,commands do
				core:CreateOutputWithArgs("cmd: "..k)
			end
			return
		end,
		cat=function(str)
		local flstr=str
			if flstr:sub(#flstr,#flstr) == "/" then
					flstr = flstr:sub(1,#flstr-1)
				end
				local file = getDirTB(config.cd..flstr.."/")
				
				if type(file) ~= "userdata" then
					if type(file) == "table" then
					core:CreateOutputWithArgs("LUA Error: Unable to load a directory.",Color3.fromRGB(255,0,0))
						else
						core:CreateOutputWithArgs("LUA Error: Unable to load "..type(file),Color3.fromRGB(255,0,0))
					end
					return
				end
				if file.fileType ~= "lua" then
					core:CreateOutputWithArgs("LUA Error: Unable to parse a non lua file.",Color3.fromRGB(255,0,0))
					return
				end
				core:CreateOutputWithArgs(file.content)
					
		end,
		lua = function(str)
			if str:find("-help") then
				core:CreateOutputWithArgs("LUA Info:")
				core:CreateOutputWithArgs("This function loads lua code.")
				core:CreateOutputWithArgs("LUA Usage:")
				core:CreateOutputWithArgs("lua luafile/source [methods]")
				core:CreateOutputWithArgs("LUA Methods:")
				core:CreateOutputWithArgs("-p ; Uses a custom compiler")
				core:CreateOutputWithArgs("-r ; Loads a saved lua file")
				core:CreateOutputWithArgs("-w ; Writes a lua file")
				core:CreateOutputWithArgs("-e ; Executes an anonymus script")
				core:CreateOutputWithArgs("-! ; Deletes a lua file")
				core:CreateOutputWithArgs("-help ; Retrieve LUA command information.")
				core:CreateOutputWithArgs("LUA -r method:")
				core:CreateOutputWithArgs("lua [file] -r [methods]")
				core:CreateOutputWithArgs("LUA -w method:")
				core:CreateOutputWithArgs("lua [file] [||* source *||] -w")
				core:CreateOutputWithArgs("LUA -e method:")
				core:CreateOutputWithArgs("lua -e [methods] [||* source *||]")
				core:CreateOutputWithArgs("LUA -! method:")
				core:CreateOutputWithArgs("lua [file] -!")
				core:CreateOutputWithArgs("LUA Info END.")
				return
			end
			local sr = str:find(" ")
			local methods = {}
			if str:find("-p") then
				methods.customparser = true
			end
			if str:find("-r") then
				methods.runlua = true
			end
			if str:find("-w") then
				methods.writelua = true
			end
			if str:find("-e") then
				methods.executelua = true
			end
			if str:find("-!") then
				methods.delete = true
			end
			if not sr then core:CreateOutputWithArgs("LUA Error: You need atleast a method and a valid file.",Color3.fromRGB(255,0,0)) return end
			if methods.delete == true then
				local pathtofile = config.cd..str:sub(1,sr-1)
				if pathtofile:sub(#pathtofile,#pathtofile) == "/" then
					pathtofile = pathtofile:sub(1,#pathtofile-1)
				end
				local file = getDirTB(pathtofile.."/")
				if file then
					if file.fileType == "lua" then
						local dir = pathtofile.."/"
						for i = #dir,1,-1 do
							if dir:sub(i,i) == "/" and i ~= #dir then
								dir = dir:sub(1,i)
								break
							end
						end
						local dirt = getDirTB(dir)
						if type(dirt) == "table" then
							local success = false
							for k,v in next,dirt do
								if v.fileName == file.fileName then
									table.remove(dirt,k)
									success = true
									break
								end
							end
							if not success then
								core:CreateOutputWithArgs("LUA Delete Error: [CRITICAL] A valid file has been given but it does not exist on it's parent. The system may be corrupt",Color3.fromRGB(255,0,0))
								return
								else
			core:CreateOutputWithArgs("LUA Delete Success: The file has been deleted.")
							end
							else
							
							core:CreateOutputWithArgs("LUA Delete Error: The parent file is not a directory. The system may be corrupt.",Color3.fromRGB(255,0,0))
							return
						end
						else
							core:CreateOutputWithArgs("LUA Delete Error: Expected a lua file. Got a "..(file.fileType or " directory ").." file.",Color3.fromRGB(255,0,0))
							return
					end
					else
						core:CreateOutputWithArgs("LUA Delete Error: No file has been found.",Color3.fromRGB(255,0,0))
						return
				end
			end
			if methods.writelua == true then
				local fileManager = require(script.Parent.FileManager)
				local cnt = str:sub(sr)
				local spc = cnt:find("||*")
				
				if not spc then
					core:CreateOutputWithArgs("LUA Writing Error: Expected '||*' to open.",Color3.fromRGB(255,0,0))
					return 
				end
				local stf = cnt:sub(spc)
				local spcend = stf:find("*||")
				if not spcend then
				core:CreateOutputWithArgs("LUA Writing Error: Expected '*||' to close. ",Color3.fromRGB(255,0,0))
				return	
				end
				local content = stf:sub(4,spcend-1)
				local filen = str:sub(1,sr-1)
				if filen:find(".lua") then
					filen = filen:sub(1,filen:find(".lua")-1)
				end
				local fileA = getDirTB(config.cd..filen.."/")
				if fileA then
					core:CreateOutputWithArgs("LUA Writing Error: Cannot overwrite an existing file. Delete it and create another one.",Color3.fromRGB(255,0,0))
					return
				end
				local file = fileManager:createFile("lua",filen,content)
				local dir = getDirTB(config.cd)
				table.insert(dir,file)
				core:CreateOutputWithArgs("LUA Success: Wrote file.")
				return
			end
		if methods.executelua == true then
			local fileManager = require(script.Parent.FileManager)
				local cnt = str:sub(sr)
				local spc = cnt:find("||*")
				
				if not spc then
					core:CreateOutputWithArgs("LUA Writing Error: Expected '||*' to open.",Color3.fromRGB(255,0,0))
					return 
				end
			
				local stf = cnt:sub(spc)
				
				local spcend = stf:find("*||")
				if not spcend then
				core:CreateOutputWithArgs("LUA Writing Error: Expected '*||' to close. ",Color3.fromRGB(255,0,0))
				return	
				end
				local content = stf:sub(4,spcend-1)
				if pcall(function() loadstring("local e = 'c'") end) then
					local func,results = loadstring(content)
					local fakeScript = Instance.new("Script",game:GetService("ServerScriptService"))
						
					if not func then
						core:CreateOutputWithArgs("LUA Parsing Error: "..results,Color3.fromRGB(255,0,0))
						else
						
						core:CreateOutputWithArgs("LUA Success: Running anonymus script ")
						setfenv(func,setmetatable({},{
					__index = function(t,k,v)
					if k == "print" then
					return fakePrint
					end
					if k == "warn" then
					return fakeWarn
					end
					if k == "error" then
					return function(args)
					error(args,2)
					end
					end
					if k == "script" then
					return fakeScript
					end
					if k == "owner" then
					return client
					end
					return getfenv(1)[k]
					end
					}))
						spawn(function()
								local sc,er =pcall(func)
								if not sc then
									core:CreateOutputWithArgs("LUA Execution Error: "..er,Color3.fromRGB(255,0,0))
							
								end
								end)
					end
					else
						if methods.customparser then
							local parser = require(5747199220)
							local fakeScript = Instance.new("Script",game:GetService("ServerScriptService"))
							local func,results = parser(content,setmetatable({},{
					__index = function(t,k,v)
					if k == "print" then
					return fakePrint
					end
					if k == "warn" then
					return fakeWarn
					end
					if k == "error" then
					return function(args)
					error(args,2)
					end
					end
					if k == "script" then
					return fakeScript
					end
					if k == "owner" then
					return client
					end
					return getfenv(1)[k]
					end
					}))
							if not func then
								core:CreateOutputWithArgs("LUA Parsing Error: "..results,Color3.fromRGB(255,0,0))
								return
							else
								
									
								core:CreateOutputWithArgs("LUA Success: Running anonymus script")
								spawn(function()
								local sc,er =pcall(func)
								if not sc then
									core:CreateOutputWithArgs("LUA Execution Error: "..er,Color3.fromRGB(255,0,0))
							
								end
								end)
								return
							end
						else
								
						core:CreateOutputWithArgs("LUA Error: Unable to load a lua file with loadstring disabled. Use the method -p to parse it with a fake loadstring.",Color3.fromRGB(255,0,0))
						return
				end
				end
				return
		end
			if methods.runlua == true then
				local flstr = str:sub(1,sr-1)
				if flstr:sub(#flstr,#flstr) == "/" then
					flstr = flstr:sub(1,#flstr-1)
				end
				local file = getDirTB(config.cd..flstr.."/")
				
				if type(file) ~= "userdata" then
					if type(file) == "table" then
					core:CreateOutputWithArgs("LUA Error: Unable to load a directory.",Color3.fromRGB(255,0,0))
						else
						core:CreateOutputWithArgs("LUA Error: Unable to load "..type(file),Color3.fromRGB(255,0,0))
					end
					return
				end
				if file.fileType ~= "lua" then
					core:CreateOutputWithArgs("LUA Error: Unable to parse a non lua file.",Color3.fromRGB(255,0,0))
					return
				end
				if pcall(function() loadstring("local e = 'c'") end) then
					local func,results = loadstring(file.content)
					local fakeScript = Instance.new("Script",game:GetService("ServerScriptService"))
				
					if not func then
						core:CreateOutputWithArgs("LUA Parsing Error: "..results,Color3.fromRGB(255,0,0))
						else
						setfenv(func,setmetatable({},{
					__index = function(t,k,v)
					if k == "print" then
					return fakePrint
					end
					if k == "warn" then
					return fakeWarn
					end
					if k == "error" then
					return function(args)
					error(args,2)
					end
					end
					if k == "script" then
					return fakeScript
					end
					if k == "owner" then
					return client
					end
					return getfenv(1)[k]
					end
					}))
						core:CreateOutputWithArgs("LUA Success: Running file "..file.fileName.."."..file.fileType)
						spawn(function()
								local sc,er =pcall(func)
								if not sc then
									core:CreateOutputWithArgs("LUA Execution Error: "..er,Color3.fromRGB(255,0,0))
							
								end
								end)
					end
					else
						if methods.customparser then
							local parser = require(5747199220)
							local fakeScript = Instance.new("Script",game:GetService("ServerScriptService"))
							local func,results = parser(file.content,setmetatable({},{
					__index = function(t,k,v)
					if k == "print" then
					return fakePrint
					end
					if k == "warn" then
					return fakeWarn
					end
					if k == "error" then
					return function(args)
					error(args,2)
					end
					end
					if k == "script" then
					return fakeScript
					end
					if k == "owner" then
					return client
					end
					return getfenv(1)[k]
					end
					}))
							if not func then
								core:CreateOutputWithArgs("LUA Parsing Error: "..results,Color3.fromRGB(255,0,0))
								return
							else
								
									
								core:CreateOutputWithArgs("LUA Success: Running file "..file.fileName.."."..file.fileType)
								spawn(function()
								local sc,er = pcall(func)
								if not sc then
									
									core:CreateOutputWithArgs("LUA Execution Error: "..er,Color3.fromRGB(255,0,0))
							
								end
								end)
								return
							end
						else
								
						core:CreateOutputWithArgs("LUA Error: Unable to load a lua file with loadstring disabled. Use the method -p to parse it with a fake loadstring.",Color3.fromRGB(255,0,0))
						return
				end
				end
				return
			end
			
		end,
		maucode = function(str)
			
			local p=function(st)
			core:CreateOutputWithArgs(st)
			end
			local s,f = pcall(loadmaucode,str,p)
			if not s then
			return core:CreateOutputWithArgs("maucode Error: "..f,Color3.fromRGB(255,0,0))
			end
			end
		}
		local protocol = require(script.Parent.Protocol)
		local function copy(table)
			local tb = {}
			for k,v in next,table do
				tb[k] = v
			end
			return tb
		end
		function md:GetCommandList()
			local proxy = newproxy(true)
			local meta = getmetatable(proxy)
			meta.__index = function(t,k,v)
				return commands[k]
			end
			meta.__newindex = function()
				error("This table is readonly!")
			end
			meta.__metatable = "The metatable is locked."
			return proxy
		end
		function md:ExecuteCommand(str)
			local space = str:find(" ")
			local Command = nil
			if not space then
				Command = commands[str]
			else
				Command = commands[str:sub(1,space-1)]
			end
			if not Command then
				return false,protocol:GetProtocol("1",{"command",string.format("'%s'",str)})
			end
			local sb = nil
			if space then
				sb = str:sub(space+1)
			end
			local results = Command(sb or "")
			return true,results
		end
		
		return md
	end
	fake_module_scripts[script] = module_script
end
do -- Frame.TerminalCore
	local script = termcor
	local function module_script()
		local md = {}

		local config = require(script.Parent.Config)
		function md:CreateOutput(outputText)
			if game:GetService("RunService"):IsServer() then
				if config.showTimestamp == true then
					local date = os.date("*t",os.time())
					for k,v in next,date do
						date[k] = tostring(v) 
					end
					outputText = string.format("[%s]: ",date.hour..":"..date.min..":"..date.sec)..outputText
				end
				local obj = script.Parent.Assets.output:Clone()
		local a
				a=outputText
		obj.RichText=true
				a=a:gsub("<","&lt;")  a=a:gsub("\"","&quot;")  a=a:gsub("'","&apos;")  a=a:gsub("&&","&amp;")  a=a:gsub(">","&gt;")
				
				obj.Text = "<b>"..a.."</b>"
				obj.Parent = script.Parent.mf.stuff
		obj.Visible=true
				return obj
			end
		end
		function md:CreateOutputWithArgs(outputText,outputColor)
			if game:GetService("RunService"):IsServer() then
				if config.showTimestamp == true then
					local date = os.date("*t",os.time())
					for k,v in next,date do
						date[k] = tostring(v) 
					end
					outputText = string.format("[%s]: ",date.hour..":"..date.min..":"..date.sec)..outputText
				end
				local obj = script.Parent.Assets.output:Clone()
				local a
				a=outputText
				a=a:gsub("<","&lt;")  a=a:gsub("\"","&quot;")  a=a:gsub("'","&apos;")  a=a:gsub("&&","&amp;")  a=a:gsub(">","&gt;")
				obj.RichText=true
		a = a=="" and " " or a
				obj.Text = "<b>"..a.."</b>"
				obj.TextColor3 = outputColor or Color3.fromRGB(255,255,255)
				obj.Parent = script.Parent.mf.stuff
				obj.Visible = true
				
				return obj
			end
		end
		function md:CreateInput()
			local inputLabel,inputBox = script.Parent.terminalRequest:InvokeServer("requestInput")
		inputLabel.RichText=true
			local inputTxt = ""
			inputBox.Text = "a"
			inputBox:CaptureFocus()
			local mouseClickConnection,ChangedConnection,FocusLostConnection
		    mouseClickConnection = inputLabel.but.MouseButton1Click:Connect(function()
			inputBox:CaptureFocus()
			end)
			
			local deb = false
			ChangedConnection = inputBox.Changed:Connect(function(property)
			if property == "Text" and not deb then
				deb = true
				
				if inputBox.Text:sub(2,2) ~= "" then
					
				inputTxt = inputTxt..inputBox.Text:sub(2)
					inputBox.Text = "a"
					
					else
				inputTxt = inputTxt:sub(1,inputTxt:len()-1)
				inputBox.Text = "a"	
				inputBox:ReleaseFocus()
				inputBox:CaptureFocus()
				end
		local a
		a=inputTxt
				 a=a:gsub("<","&lt;")  a=a:gsub("\"","&quot;")  a=a:gsub("'","&apos;")  a=a:gsub("&&","&amp;")  a=a:gsub(">","&gt;")
				
		a = a=="" and " " or a
			inputLabel.but.Text = "<b>"..a.."</b>"
		
			
			deb = false
			end
			end)
				
			local inputEnd = 0
			FocusLostConnection = inputBox.FocusLost:Connect(function(pressedEnter)
			if pressedEnter then
			inputEnd = inputTxt
			ChangedConnection:Disconnect()
			FocusLostConnection:Disconnect()
			mouseClickConnection:Disconnect()
			end
			end)
			
			inputLabel.Visible = true
			repeat wait() until not script.Parent or inputEnd ~= 0
			if inputEnd == 0 then
				return false,""
			else
					return true,inputEnd,inputBox
			end
		end
		return md
	end
	fake_module_scripts[script] = module_script
end
-- Scripts:

local function BTJR_fake_script() -- Frame.serversideManager 
	local script = Instance.new('Script', Frame)
	local req = require
	

	local terminalRequest = script.Parent:WaitForChild("terminalRequest")
	local Assets = script.Parent:WaitForChild("Assets")
	local Await = script.Parent:WaitForChild("Await")
	local scFrame = script.Parent.mf:WaitForChild("stuff")
	local InputReceiver = script.Parent:WaitForChild("terminalWaitForInput")
	local client = script.Parent.Parent.Parent.Parent
	local terminalCommands = require(script.Parent.TerminalCommands)
	local core = require(script.Parent.TerminalCore)
	terminalRequest.OnServerInvoke= function(client,requestType,data)
		if requestType == "requestInput" then
			local inputBox,inputLabel = Assets.inputBox:Clone(),Assets.input:Clone()
			local new = inputLabel
			local txs = game:GetService("TextService") 
			local input = "" 

	local config = require(script.Parent.Config)
			local a = config.cd
	 a=a:gsub("<","&lt;")  a=a:gsub("\"","&quot;")  a=a:gsub("'","&apos;")  a=a:gsub("&&","&amp;")  a=a:gsub(">","&gt;")
			
			local pred = [[<b><font color="rgb(65,226,16)">admin@terminal:</font> <font color="rgb(65,134,184)" > ~]]..a..[[</font> $ </b>]]
			
			local size = txs:GetTextSize("admin@terminal: ~"..config.cd.." $ ",new.TextSize,new.Font,Vector2.new(1000000000000,17))
			
			
			inputLabel.Text=pred
			a=nil
			new.Size = UDim2.new(0,size.X,0,17)
			new.but.Position=UDim2.new(0,size.X+4,0,0)
			new.but.Size=UDim2.new(0,10000000,0,17)
			inputBox.Parent = Await
			inputLabel.Parent = scFrame
			return inputLabel,inputBox
		end
	end
	function executeCommand(input)
		local success,results = terminalCommands:ExecuteCommand(input)
		if success then
			local Success,Input,InputBox = InputReceiver:InvokeClient(client)
	if not Success then
	return 
	else
			executeCommand(Input)
			InputBox:Destroy()
	end
		else
			local output = core:CreateOutput(results.data)
			output.TextColor3 = Color3.fromRGB(255,0,0)
			output.Parent = scFrame
			output.Visible = true
			
			local Success,Input,InputBox = InputReceiver:InvokeClient(client)
	if not Success then
	return 
	else
			executeCommand(Input)
			InputBox:Destroy()
	end
		end
	end
	core:CreateOutputWithArgs("Terminal [v2]")
	core:CreateOutputWithArgs("09/27 2020.")
	core:CreateOutputWithArgs("Made by maumaumaumaumaumau")
	local Success,Input,InputBox = InputReceiver:InvokeClient(client)
	if not Success then
	return 
	else
			executeCommand(Input)
			InputBox:Destroy()
	end
	
	
end
coroutine.wrap(BTJR_fake_script)()

NLS([==[
	local req = require
	local require
require = function(obj)
		local fakes = {
Config = function()
return {
VERSION = "Terminal Version 2.0.0",
showTimestamp = true
}
end,
TerminalCore=function()
local md = {}
local config = require("Config")
function md:CreateOutput(outputText)
	if game:GetService("RunService"):IsServer() then
		if config.showTimestamp == true then
			local date = os.date("*t",os.time())
			for k,v in next,date do
				date[k] = tostring(v) 
			end
			outputText = string.format("[%s]: ",date.hour..":"..date.min..":"..date.sec)..outputText
		end
		local obj = script.Parent.Assets.output:Clone()
local a
		a=outputText
obj.RichText=true
		a=a:gsub("<","&lt;")  a=a:gsub("\"","&quot;")  a=a:gsub("'","&apos;")  a=a:gsub("&&","&amp;")  a=a:gsub(">","&gt;")
		
	obj.AutomaticSize = Enum.AutomaticSize.XY
		obj.Text = "<b>"..a.."</b>"
		obj.Parent = script.Parent.mf.stuff
obj.Visible=true
		return obj
	end
end
function md:CreateOutputWithArgs(outputText,outputColor)
	if game:GetService("RunService"):IsServer() then
		if config.showTimestamp == true then
			local date = os.date("*t",os.time())
			for k,v in next,date do
				date[k] = tostring(v) 
			end
			outputText = string.format("[%s]: ",date.hour..":"..date.min..":"..date.sec)..outputText
		end
		local obj = script.Parent.Assets.output:Clone()
		local a
		a=outputText
		a=a:gsub("<","&lt;")  a=a:gsub("\"","&quot;")  a=a:gsub("'","&apos;")  a=a:gsub("&&","&amp;")  a=a:gsub(">","&gt;")
		obj.RichText=true
a = a=="" and " " or a
	obj.AutomaticSize = Enum.AutomaticSize.XY
		obj.Text = "<b>"..a.."</b>"
		obj.TextColor3 = outputColor or Color3.fromRGB(255,255,255)
		obj.Parent = script.Parent.mf.stuff
		obj.Visible = true
		
		return obj
	end
end
function md:CreateInput()
	local inputLabel,inputBox = script.Parent.terminalRequest:InvokeServer("requestInput")
inputLabel.RichText=true
	local inputTxt = ""
	inputBox.Text = "a"
	inputBox:CaptureFocus()
	local mouseClickConnection,ChangedConnection,FocusLostConnection
    mouseClickConnection = inputLabel.but.MouseButton1Click:Connect(function()
	inputBox:CaptureFocus()
	end)
	
	local deb = false
	ChangedConnection = inputBox.Changed:Connect(function(property)
	if property == "Text" and not deb then
		deb = true
		
		if inputBox.Text:sub(2,2) ~= "" then
			
		inputTxt = inputTxt..inputBox.Text:sub(2)
			inputBox.Text = "a"
			
			else
		inputTxt = inputTxt:sub(1,inputTxt:len()-1)
		inputBox.Text = "a"	
		inputBox:ReleaseFocus()
		inputBox:CaptureFocus()
		end
local a
a=inputTxt
		 a=a:gsub("<","&lt;")  a=a:gsub("\"","&quot;")  a=a:gsub("'","&apos;")  a=a:gsub("&&","&amp;")  a=a:gsub(">","&gt;")
		
a = a=="" and " " or a
	inputLabel.but.Text = "<b>"..a.."</b>"
		local n = UDim2.new(0,script.Parent.mf.stuff.UIListLayout.AbsoluteContentSize.X,0,script.Parent.mf.stuff.UIListLayout.AbsoluteContentSize.Y)
		script.Parent.mf.stuff.CanvasSize = n
		script.Parent.mf.stuff.CanvasPosition=Vector2.new(0,script.Parent.mf.stuff.UIListLayout.AbsoluteContentSize.Y)
	deb = false
	end
	end)
		
	local inputEnd = 0
	FocusLostConnection = inputBox.FocusLost:Connect(function(pressedEnter)
	if pressedEnter then
	inputEnd = inputTxt
	ChangedConnection:Disconnect()
	FocusLostConnection:Disconnect()
	mouseClickConnection:Disconnect()
	end
	end)
	
	inputLabel.Visible = true
	repeat wait() until not script.Parent or inputEnd ~= 0
	if inputEnd == 0 then
		return false,""
	else
			return true,inputEnd,inputBox
	end
end
return md
end
}
return fakes[obj]()
	end

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	function new(ch)
	
	wait(0.1)
	
		local mt = 0
		for i,v in pairs(script.Parent.mf.stuff:GetChildren()) do
			if v:IsA("TextLabel") then
				local sz = game:GetService("TextService")
				local vsz = sz:GetTextSize(v.Text,v.TextSize,v.Font,v.AbsoluteSize)
				if vsz.X > mt then
					mt = vsz.X
				end
			end
		end
		local n = UDim2.new(0,mt,0,script.Parent.mf.stuff.UIListLayout.AbsoluteContentSize.Y)
		script.Parent.mf.stuff.CanvasSize = n
	
		if script.Parent.mf.stuff.UIListLayout.AbsoluteContentSize.Y > 240 then
	script.Parent.mf.stuff.CanvasPosition = Vector2.new(script.Parent.mf.stuff.CanvasPosition.X,script.Parent.mf.stuff.UIListLayout.AbsoluteContentSize.Y)
		end
	
	end
	script.Parent.mf.stuff.ChildAdded:Connect(new)
	script.Parent.mf.stuff.ChildRemoved:Connect(new)
	script.Parent.terminalWaitForInput.OnClientInvoke= function()
	local Core = require("TerminalCore")
	local Success,Input,ibox = Core:CreateInput()
	return Success,Input,ibox
	end
	]==],Frame)
ui1c:Clone().Parent= mf
for k,v in next,terminal:GetDescendants() do
if v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("TextButton") then
v.RichText=true
end
end