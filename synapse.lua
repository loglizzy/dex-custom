if game:GetService "CoreGui":FindFirstChild "Dex" then
    game:GetService "CoreGui".Dex:Destroy()
end
math.randomseed(tick())
local a = {}
for b = 48, 57 do
    table.insert(a, string.char(b))
end
for b = 65, 90 do
    table.insert(a, string.char(b))
end
for b = 97, 122 do
    table.insert(a, string.char(b))
end
function RandomCharacters(c)
    if c > 0 then
        return RandomCharacters(c - 1) .. a[math.random(1, #a)]
    else
        return ""
    end
end

local d = game:GetObjects("rbxassetid://"..shared['IDFI139F4O312'])[1] -- my custom dex asset, DONT change it!
d.Name = RandomCharacters(math.random(5, 20))
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
