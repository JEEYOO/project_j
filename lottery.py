def lottery(lottos, win_nums):
    first = 0 #6draws
    last = 0  
    zero = 0
    #print(first, last,zero)
    for v in range(6): 
        if lottos[v] == 0: #2
            zero = zero+1
        elif lottos[v] in win_nums: #2
            first = first + 1              
        else : last = last +1 #2
               
    
    if zero==6:
        answer = [1,6]
    elif first==6: 
        answer = [1,1]
    elif last ==6: 
        answer = [6,6]    
    else: answer = [7-(first+zero), last+zero+1]    
        
    return answer
