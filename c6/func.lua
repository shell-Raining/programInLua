---@diagnostic disable: lowercase-global
-- variable length paramenter
-- WARRING: you need {} when call ipairs, other than ()
function foo(...)
    print("enter")
    for _, j in ipairs({ ... }) do
        print(j)
        print("hello world")
    end
end

foo("a", "b", "c")
