abc=input("enter some word:-- ")
x=''
for i in abc:
    if i in "aeiou":
        x=x+i

print(f"vowels are: {x} count of vowels are: {len(x)}")


