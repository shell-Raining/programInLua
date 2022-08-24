---@diagnostic disable: unused-local, undefined-field
-- the num of below statement is 1
-- a % b == a - (a // b * b)
print(-3 % 2)

-- the num of below statement is 314.0
-- TODO: why this grammer is not supported
-- because it need you refresh the buffer
print(math.pi // 0.01)

-- random numberx
-- it does appear the same situation
math.randomseed(1)
for i = 1, 3 do
    print(math.random(10))
end

-- double and integer
-- TODO: why can't format this code
-- because the lsp, please make sure it is right this buffer, hide info doens't useful
print(math.maxinteger)

-- the num of below statement is 2, this means it calc from right to left
print(2^-3^0)

-- TODO: lua implementation normal distribution
-- how
