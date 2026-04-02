num1=int(input("enter your 1st number"))
num2=int(input("enter your 2st number"))

def big(a,b):
    if a<b:
        print(a)
    elif a==b:
        print("equal") 
    else:
        print(b)


big(num1,num2)