function rdn(c)
    local str = '' for i=1,c do
        str = str..string.char(math.random(0,255))
    end print('GUI:',str) return str
end

local old = game:GetService("CoreGui").RobloxGui:FindFirstChildOfClass('ScreenGui')
if old then old:Remove() end

local d = game:GetObjects("rbxassetid://"..shared['IDFI139F4O312'])[1] -- my custom dex asset, DONT change it!
d.Name = rdn(math.random(5, 20))
if syn or protect_gui then (syn.protect_gui or protect_gui)(d) end
d.Parent = game:GetService("CoreGui").RobloxGui

local function e(f, g)
    local function h(i, j)
        local k = {}
        local l = {script = j}
        local m = {}
        m.__index = function(n, o)
            if l[o] == nil then
                return getfenv()[o]
            else
                return l[o]
            end
        end
        m.__newindex = function(n, o, p)
            if l[o] == nil then
                getfenv()[o] = p
            else
                l[o] = p
            end
        end
        setmetatable(k, m)
        setfenv(i, k)
        return i
    end
    local function q(j)
        if j.ClassName == "Script" or j.ClassName == "LocalScript" then
            spawn(
                function()
                    h(loadstring(j.Source, "=" .. j:GetFullName()), j)()
                end
            )
        end
        for b, r in pairs(j:GetChildren()) do
            q(r)
        end
    end
    q(f)
end
e(d)
