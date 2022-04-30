x = input('input :')
a = ['abc123', 'def456', 'ghi789']
a.append(x)
a.remove('def456')
print(a[1][-3:], a[2][:-3], sep= ',')
for i in range(3, 6):
  print(i, end= ' ')
