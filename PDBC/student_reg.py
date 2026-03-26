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










def login():
    query_login="SELECT* FROM students"
    curobj.fetchall()
    curobj.execute(query_login)
    name_login=input("enter your name: ")
    gmail_login=input("enter your gmail: ")
    if name_login == gmail_login:
        print("logged in successfully")
    else:
        print("invalid credentials")
    



def register():
    name=input("enter your name: ")
    gmail=input("enter your email: ")
    age=int(input("enter your age: "))
    password=input("enter your password: ")
    c_password=input("enter your password again: ")

    if password==c_password:
        query="INSERT INTO students(Name,Age,Gmail) VALUES(%s,%s,%s)"
        data=(name,age,gmail,)
        curobj.execute(query,data)
        db_connection.commit()
        print(f"Hello! {name} your are registered successfully")
        login()

    else:
        print("re-enter your password: ")
register()

print("1.Register")
print("2.login")

a=input("Enter 1 to Register n\Enter 2 to lopgin: ")

if a == "1":
    register()
elif a=="2":
    login()
else:
    print("Invalid input: ")





    











