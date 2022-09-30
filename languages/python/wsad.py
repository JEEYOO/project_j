
n = int(input())
moves = input().split()

dx = [-1, 1, 0, 0]
dy = [0, 0, -1, 1]
wsad = ['W', 'S', 'A', 'D']

x, y = 1, 1 #inital position 

for each in moves:
  for i in range(len(move_types)):
    if plan == wsad[i]:
      nx = x + dx[i]
      ny = y + dy[i]
  if nx < 1 or ny < 1 or nx > x or ny > n: #out of square range
    continue
  x, y = nx, ny
  
print(x,y)  
