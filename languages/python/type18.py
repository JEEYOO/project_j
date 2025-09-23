a,b,c,d,e,f = 15, 0.13, "abc", [1,2,3], (1,2), {1,2}

print(type(a),type(b),type(c),type(d),type(e),type(f))

typeList = [15, 0.13, "abc", [1,2,3], (1,2), {1,2}, {}]

for i in typeList :
    print(type(i), end="")
