class Course:

    def __init__(self):
        print("courses")

    def showcourse(self):
        print("course name is datascience")
        print("price is 35000")

        
class ProgrammingCourse(Course):

    def __init__(self):
        super().__init__()
        super().showcourse()
        print("programing course")

    def showprogrammingcourse(self):
        print("python")
        print("1hr30min")

obj=ProgrammingCourse()
obj.showprogrammingcourse()





    