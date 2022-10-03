print(0.1+0.1)

#// from decimal in Decimal 
from decimal import Decimal

print(Decimal('0.1') + Decimal('0.1'))

print(0.2 == 0.1+0.1)
print(0.1 + 0.1 + 0.1 - 0.3)
B = 0.1 + 0.1 + 0.1 - 0.3
A = Decimal('0.1')+Decimal('0.1')+Decimal('0.1')-Decimal('0.3')
print(A == 0, B == 0)

print(1.1+2.2)
print(0.1+0.2)



#global
a = 0

def ex1():
  global a
  a += 1
  
for i in range(5):
  ex1()
  
print(a)
