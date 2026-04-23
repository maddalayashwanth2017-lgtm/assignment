class Camera:

    def __init__(self,MP):
        self.MP=MP
    def take_photo(self):
        print("photo captured")


         
class MusicPlayer:
    def __init__(self,brand):
        self.brand=brand
    
    def play_music(self):
        print("Music started")



class SmartPhone(Camera,MusicPlayer):
    def __init__(self,MP,brand,model_name):
        Camera.__init__(self,MP)
        MusicPlayer.__init__(self,brand)
        self.model_name=model_name

    def show_details(self):
        
        print(self.MP,"MP")
        print("brand =",self.brand)
        print("model =",self.model_name)

phone1=SmartPhone(48,"apple","17 pro max")
phone2=SmartPhone(200,"samsung","S26 ultra")

phone1.show_details()
print()
phone2.show_details()