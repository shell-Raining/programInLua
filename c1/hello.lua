print("hello lua")

-- print factory of n
function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

print("enter a number")
local a = io.read("*n")
print(fact(a))

-- about comments
--[[
print("hello world")
--]]

-- print the script name
print(arg[0])
