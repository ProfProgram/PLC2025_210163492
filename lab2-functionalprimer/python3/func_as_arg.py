def listFunc(a, b):
    return [i for i in range(a, b+1)] #Create list of ints from 1 to 5, Haskell equivalent [1..5]

def applicatorFunc(inpFunc, s, a, b):
    if s=='s':
        return sum(inpFunc(a, b))
    else:
        return sum(inpFunc(a, b))/5

print(applicatorFunc(listFunc, 's', 1, 10))