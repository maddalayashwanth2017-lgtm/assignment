import mysql.connector 
db_connection = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="YASHwanth@9866",
    database="rocky"
)

print(db_connection)
print("success")

curobj=db_connection.cursor()

curobj.execute("""
CREATE TABLE IF NOT EXISTS students(
Id INT AUTO_INCREMENT PRIMARY KEY ,
Name VARCHAR(50) NOT NULL,
Age INT,
Gmail VARCHAR(50) NOT NULL
)
""")



# def dashbord(student):
#     print("1 to edti your profile: ")
#     print("2 to delete your profile: ")
#     print("3 to View your profile: ")

#     x=input("chose one option from above: ")

#     def editprofile():
        


    
    




    



def login():
    query_login="SELECT Name,Gmail FROM students"
    curobj.execute(query_login)
    verify=curobj.fetchall()
    name_login=input("enter your name: ")
    gmail_login=input("enter your gmail: ")
    for Name,Gmail in verify:
        if name_login==Name and gmail_login==Gmail:
            print("logged in successfully")
            dashbord()
        else:
            print("invalid credentials")




def register():
    name=input("enter your name: ")
    gmail=input("enter your email: ")
    age=int(input("enter your age: "))
    password=input("enter your password: ")
    c_password=input("enter your password again: ")
    verify=curobj.fetchall()

    if password==c_password:
        query="INSERT INTO students(Name,Age,Gmail) VALUES(%s,%s,%s)"
        data=(name,age,gmail,)
        curobj.execute(query,data)
        db_connection.commit()
        print(f"Hello! {name} your are registered successfully")
    else:
        print("re-enter your password: ")


print("1.Register")
print("2.login")

a=input("Enter 1 to Register \nEnter 2 to login: ")

if a == "1":
    register()
elif a=="2":
    login()
else:
    print("Invalid input: ")





    











