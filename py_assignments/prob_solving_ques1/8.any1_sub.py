maths=int(input("enter maths marks: "))
phy=int(input("enter phy marks: "))
chy=int(input("enter chy marks: "))

def sub(m,p,c):

    if m>=36 or p>=35 or c>=35:
        print("pass")
    else:
        print("fail")




sub(maths,phy,chy)
