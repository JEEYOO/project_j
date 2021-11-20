def korean_verb(any): 
    if (any == 'Enter'):
        return '님이 들어왔습니다.'
    elif (any == 'Leave'): return '님이 나갔습니다.'

def solution(record):
    answer = []
    
    for sentences in range(len(record)):
        words = record[sentences].split()
        explanation = korean_verb(words[0])
        answer.append(words[1]+explanation)
    
    return answer
