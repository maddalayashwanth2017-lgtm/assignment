maths=int(input("enter maths marks: "))
phy=int(input("enter phy marks: "))
chy=int(input("enter chy marks: "))

def sub(m,p,c):
    count=0
    for i in (m,p,c):
        if i>=35:
            count+=1

    if count>=2:
        print("pass")

    else:
        print("fail")

        
        
sub(maths,phy,chy)
