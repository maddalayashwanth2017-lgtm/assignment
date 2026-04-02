maths=int(input("enter maths marks: "))
phy=int(input("enter phy marks: "))
chy=int(input("enter chy marks: "))

def sub(m,p,c):

    if m>=36 and p>=35 and c>=35:
        print("pass")
    else:
        print("fail")




sub(maths,phy,chy)
