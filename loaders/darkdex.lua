local old = game:GetService("CoreGui").RobloxGui:FindFirstChildOfClass('ScreenGui')
if old then old:Remove() end

local str = '' for _=1,math.random(9,21) do
    str = str..string.char(math.random(0,255))
end

local d = game:GetObjects("rbxassetid://"..shared['ODFI139F4O312I'])[1] -- my custom dex asset, DONT change it!
d.Name = str
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
end;e(d);print('[Dark Dex] :',str)
