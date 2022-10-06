#Greatest Common Divisor

def gcd(x,y):
    if x % y == 0:
        return y
    else:
        return gcd(y, x%y)
        
print(gcd(192, 162))
