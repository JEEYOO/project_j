array1 = [4,6,1,6,5,4,8,65,4]

#range, array = line up

for i in range(1, len(array1)):
    #print(i)
    for k in range(i, 0, -1):
        if array1[k] < array1[k-1]:
            array1[k], array1[k-1] = array1[k-1], array1[k]
        else: # 自分より低いデイタを会ったら止まる
            break
        
print(array1)
