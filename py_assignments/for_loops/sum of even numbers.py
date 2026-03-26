x = input("Enter a number: ")
y=x
rev=0
even=0
odd=0
for i in x:
    rem = int(i)

    if rem%2==0:
        even+=rem
    else:
        odd+=rem
   
print(f"sum ofeven num are: {even}")
print(f"sum ofeven num are: {odd}")

