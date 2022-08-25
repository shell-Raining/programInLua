---@diagnostic disable: lowercase-global
-- table definitions
sunday = "monday"
monday = "sunday"
t = { sunday = "monday", [sunday] = monday }
-- equal with below sentences
a = {}
a.sunday = "monday"
a[sunday] = monday

print(t.sunday, t[sunday], t[t.sunday], t["monday"])
print(a.sunday, a[sunday], a[a.sunday], a["monday"])

-- ISSUE: what is the meaning of x
-- x.x is x itself
x = {}
x.x = x
x.x.x.x = 3
print(x.x)
