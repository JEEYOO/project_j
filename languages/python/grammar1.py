print("1. Mix 500g of Flour, 10g Yeast and 300ml Water in a bowl.\n2. Knead the dough for 10 minutes.")
#input("Can I get your name?")
#print("Hello " + input("Nationality"))
print("Abcdef"[0])
print(21_475_093_432)

import random

listA = ['A','B','C','D','E','F']

print(random.choice(listA))

fruits = ["Strawberries", "Nectarines", "Apples", "Grapes", "Peaches", "Cherries", "Pears"]
vegetables = ["Spinach", "Kale", "Tomatoes", "Celery", "Potatoes"]

dirty_dozen = [fruits, vegetables]

print(dirty_dozen[1][1])


def life_in_weeks(x) : 
    weeks = 365 * (90-x) // 7
    # weeks = 52 * (90-x) 
    
    print ("You have %d weeks left." %(weeks))
