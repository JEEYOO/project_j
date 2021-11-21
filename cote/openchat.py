def korean_verb(any): 
    if (any == 'Enter'):
        return '님이 들어왔습니다.'
    elif (any == 'Leave'): return '님이 나갔습니다.'

def solution(record):
    answer = []
    dic = {}
    
    
    for sentences in range(len(record)): 
        
        words = record[sentences].split()
        explanation = korean_verb(words[0])
        if words[0]!='Leave':
            dic[words[1]] = words[2] 
        if words[0]!='Change':
            answer.append(words[1]+' '+explanation) 
        
    answer2 = []
    
    for sentences2 in range(len(answer)):
        words2 = answer[sentences2].split()
        #idton = dic[words2]
        answer2.append(dic[words2[0]]+words2[1]+' '+words2[2])
        
    
    return answer2
