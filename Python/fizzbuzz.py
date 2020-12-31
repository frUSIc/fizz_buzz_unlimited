"""
Run with python3 fizzbuzz.py
"""

# Loop
def fizzBuzz(maxNum):
    for i in range(1,maxNum+1):
        print(divisible(i))

# Logic
def divisible(i):
    if i%3 is 0 and i%5 is 0:
        return 'fizzBuzz'
    elif i%3 is 0:
        return 'fizz'
    elif i%5 is 0:
        return 'Buzz'
    else:
        return str(i)

# Main
maxNum = int(input("Please enter max number: "))
fizzBuzz(maxNum)