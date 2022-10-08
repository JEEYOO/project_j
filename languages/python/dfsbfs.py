def dfs(graph, num, visited):
    visited[num] = True #False True False False False False False False False
    print(num, end=' ') #1
    for i in graph[num]: #[2,3,8]
        print(i)         # 2
        if not visited[i]:
            dfs(graph, i, visited) #one by one deeply
            
#connected dots
graph = [   
            [],
            [2,3,8],
            [1,7],
            [1,4,5],
            [3,5],
            [7],
            [2,6,8],
            [1,7]
        ]

visited = [False] * 9

dfs(graph,1,visited)






#bfs

from collections import deque

def bfs(graph, startn, visited):
    queue = deque([startn])
    
    #print(visited)
    
    visited[startn] = True
    
    while queue:
        v = queue.popleft()
        print(v, end=' ')
        
        for i in graph[v]: #[2,3,8]
            if not visited[i]:
                queue.append(i) #append the whole list to queue(broadly)
                visited[i] = True
                
#connected dots
graph = [   
            [],
            [2,3,8],
            [1,7],
            [1,4,5],
            [3,5],
            [3,4],
            [7],
            [2,6,8],
            [1,7]
        ]

visited = [False] * 9

bfs(graph,1,visited)
