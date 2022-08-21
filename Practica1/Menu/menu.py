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
    #Etl.Transform_data() 

def Carga_info():
    print(" ########## Cargar info ########## ")
    Etl.Load_data()


    
def Consulta():
     
     while True: 
        print(Back.BLACK,"|----------------------------------------------------|",Back.RESET)
        print(Back.LIGHTBLUE_EX,"|                  SUB MENU                            |",Back.RESET)
        print(Back.BLACK,"|----------------------------------------------------|")
        print(Back.BLACK,"|  1)  Reporte 1                                     |")
        print(Back.BLACK,"|  2)  Reporte 2                                     |")
        print(Back.BLACK,"|  3)  Reporte 3                                     |")
        print(Back.BLACK,"|  4)  Reporte 4                                     |")
        print(Back.BLACK,"|  5)  Reporte 5                                     |")
        print(Back.BLACK,"|  6)  Reporte 6                                     |")
        print(Back.BLACK,"|  7)  Reporte 7                                     |")
        print(Back.BLACK,"|  8)  Reporte 8                                     |")
        print(Back.BLACK,"|  9)  Reporte 9                                     |")
        print(Back.BLACK,"| 10)  Reporte 10                                    |")
        print(Back.BLACK,"| 11)  Regresar                                     |")
        
        print(Back.BLACK,"|----------------------------------------------------|",Back.RESET)
        print(Back.CYAN,"   Seleccione una opcion:                             ",Back.RESET)
        print("")
        print(Fore.YELLOW,">>",Fore.RESET,end =" ")
        opcion = input()
        if opcion !=None:
                if opcion == "1":
                    reporte1()                
                elif opcion =="2":
                    reporte2()
                elif opcion =="3":
                    reporte3()
                elif opcion =="4":
                    reporte4()
                elif opcion =="5":
                    reporte5()
                elif opcion =="6":
                    reporte6()
                elif opcion =="7":
                    reporte7()
                elif opcion =="8":
                    reporte8()
                elif opcion =="9":
                    reporte9()
                elif opcion =="10":
                    reporte10()
                elif opcion =="11":
                    break
                else:
                    print(Back.RED,Fore.WHITE,"!! Please, enter a correct value !!",Back.RESET)
        
        else:
            print(Back.YELLOW,Fore.WHITE," Mistake at enter a null value ",Back.RESET)


def reporte1():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 1 ##############",Back.RESET  )
     Etl.reporte1()

def reporte2():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 2 ##############",Back.RESET  )
     Etl.reporte2()

def reporte3():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 3 ##############",Back.RESET  )
     Etl.reporte3()
 
def reporte4():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 4 ##############",Back.RESET  )
     Etl.reporte4()

def reporte5():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 5 ##############",Back.RESET  )
     Etl.reporte5()

def reporte6():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 6 ##############",Back.RESET  )
     Etl.reporte6()

def reporte7():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 7 ##############",Back.RESET  )
     Etl.reporte7()

def reporte8():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 8 ##############",Back.RESET  )
     Etl.reporte8()

def reporte9():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 9 ##############",Back.RESET  )
     Etl.reporte9()

def reporte10():
     print(Back.LIGHTYELLOW_EX,"############## Reporte 10 ##############",Back.RESET  )
     Etl.reporte10()









