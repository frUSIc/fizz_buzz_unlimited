# Loop
def fizzBuzz(maxNum):
    for i in range(1,maxNum+1):
        print(divisible(i))

# Logic
def divisible(i):
    if i%3 is 0 and i%5 is 0:
        return 'fizzBuzz'
    if i%3 is 0:
        return 'fizz'
    if i%5 is 0:
        return 'Buzz'
    return str(i)

# Main
maxNum = int(input("Please enter max number: "))
fizzBuzz(maxNum)