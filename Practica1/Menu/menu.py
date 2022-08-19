from colorama import Back,Fore, init
from ProccesoETL import Etl 
init()

def Menu_Princial():
     
     
     while True: 
        print(Back.BLACK,"|----------------------------------------------------|",Back.RESET)
        print(Back.BLUE,"|                    MENU                            |",Back.RESET)
        print(Back.BLACK,"|----------------------------------------------------|")
        print(Back.BLACK,"|  1)  Borrar modelo                                 |")
        print(Back.BLACK,"|  2)  Crear modelo                                  |")
        print(Back.BLACK,"|  3)  Extraer informacion                           |")
        print(Back.BLACK,"|  4)  Cargar informacion                            |")
        print(Back.BLACK,"|  5)  Realizar consulta                             |")
        print(Back.BLACK,"|  6)  Exit                                          |")
        print(Back.BLACK,"|----------------------------------------------------|",Back.RESET)
        print(Back.CYAN,"   Seleccione una opcion:                             ",Back.RESET)
        print("")
        print(Fore.YELLOW,">>",Fore.RESET,end =" ")
        opcion = input()
        if opcion !=None:
                if opcion == "1":
                    Borrar_Modelo() 
                elif opcion =="2":
                    Crear_Modelo()
                elif opcion =="3":
                    Extraer_Info()
                elif opcion =="4":
                    Carga_info()
                elif opcion =="5":
                    Consulta()
                elif opcion =="6":
                    print(Back.GREEN,Fore.WHITE,"!! Exit successfully !!",Back.RESET)
                    break
                else:
                    print(Back.RED,Fore.WHITE,"!! Please, enter a correct value !!",Back.RESET)
        
        else:
            print(Back.YELLOW,Fore.WHITE," Mistake at enter a null value ",Back.RESET)
                    
                 
def Borrar_Modelo():
    print(" ########## Borrar Modelo ########## ")
    Etl.Delete_Models()
def Crear_Modelo():
    print(" ########## Crear Modelo ########## ")
    Etl.Create_Modelo() 
def Extraer_Info():
    print(" ########## Extraer Informacion ########## ")
    Etl.Extracion() 
def Carga_info():
    print(" ########## Cargar info ########## ")

def Consulta():
    print(" ########## Consulta ########## ")






