# Finds the smallest positive number that is evenly divisible by 
# all of the numbers from 1 to 20.

def answer():
    serendipitous_limit = 232792561
    for n in range(0, serendipitous_limit, 315):
        x = set()
        for i in range(2, 21, 2):
            a = n%i
            x.add(a)
        if len(x)==1 and 0 in x:
            for j in range(1,21):
                y = set()
                for k in range(1, 21):
                    p = (n*j)
                    y.add(p%k)
                if len(y)==1 and 0 in y and p > 0:
                    return p
                    
print answer()

