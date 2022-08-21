from colorama import Back,Fore, init
import pandas as pd
from config import db_creds
init()
    
def Delete_Models():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor(as_dict=True)  
     try:
          fichero = open('./DB/BorrarModel.sql')
          sql= fichero.read()   
          cursor.execute(sql)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not  delete the models !!",Back.RESET)                    
          return 
     print(Back.GREEN,Fore.BLACK,"!! The models was deleted  successfully  !!",Back.RESET)                    
          


def Create_Modelo():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor(as_dict=True)  
     try:
          
          fichero = open('./DB/CrearModel.sql')
          sql= fichero.read() 
          #print(sql)    
          cursor.execute(sql)
          conn.commit()
          conn.close()
          
     except:
          print(Back.RED,Fore.WHITE,"!! Could not create the models !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! The models was created succesfully !!",Back.RESET)                    
            
    











def Extracion():
     df = pd.read_csv('historial_tsumamis.csv', header=0, index_col=False, decimal='.')
     df = df.dropna(how='all')
     df["Year"].fillna("0", inplace = True)
     df["Mo"].fillna("0", inplace = True)
     df["Dy"].fillna("0", inplace = True)
     df["Hr"].fillna("0", inplace = True)
     df["Mn"].fillna("0", inplace = True)
     df["Sec"].fillna("0", inplace = True)
     df["Tsunami Event Validity"].fillna("0", inplace = True)
     df["Tsunami Cause Code"].fillna("0", inplace = True)
     df["Earthquake Magnitude"].fillna("0", inplace = True)
     df["Deposits"].fillna("0", inplace = True)
     df["Latitude"].fillna("0", inplace = True)
     df["Longitude"].fillna("0", inplace = True)
     df["Maximum Water Height (m)"].fillna("0", inplace = True)
     df["Number of Runups"].fillna("0", inplace = True)
     df["Tsunami Magnitude (Iida)"].fillna("0", inplace = True)
     df["Tsunami Intensity"].fillna("0", inplace = True)
     df["Total Deaths"].fillna("0", inplace = True)
     df["Total Missing"].fillna("0", inplace = True)
     df["Total Missing Description"].fillna("0", inplace = True)
     df["Total Injuries"].fillna("0", inplace = True)
     df["Total Damage ($Mil)"].fillna("0", inplace = True)
     df["Total Damage Description"].fillna("0", inplace = True)
     df["Total Houses Destroyed"].fillna("0", inplace = True)
     df["Total Houses Damaged"].fillna("0", inplace = True)
     df["Country"].fillna("NULL", inplace = True)
     df["Location Name"].fillna("NULL", inplace = True)
     try:
          conn = db_creds.obtener_conection()
          cursor = conn.cursor(as_dict=True)  
     

          for index, row in df.iterrows():

               query = """
               INSERT INTO temptsunami(
                Anio,Mes,Dia,Hora,Minuto,Segundo,
                Tsunami_event_validity,Tsunami_cause_code,
                Earthquake_magnitude,Deposits,Latitude,
                Longitude,Maximun_water_height,Number_of_runups,
                Tsunami_magnitude,Tsunami_intensity,Total_deaths,
                Total_missing,Total_missing_description,
                Total_injuries,Total_damage,Total_damage_description,
                Total_houses_destroyed,Total_houses_damaged,
                Country,Location_name)
        VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}',
        '{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}',
        '{21}','{22}','{23}','{24}','{25}')""".format(int(row["Year"]),int(row["Mo"]),int(row["Dy"]),int(row["Hr"]),int(row["Mn"]),int(row["Sec"]),
         int(row["Tsunami Event Validity"]),
         int(row["Tsunami Cause Code"]),float(row["Earthquake Magnitude"]),
         int(row["Deposits"]),float(row["Latitude"]),float(row["Longitude"]),
         float(row["Maximum Water Height (m)"]),
         int(row["Number of Runups"]),float(row["Tsunami Magnitude (Iida)"]),
         float(row["Tsunami Intensity"]),int(row["Total Deaths"]),
         int(row["Total Missing"]),int(row["Total Missing Description"]),
         int(row["Total Injuries"]),float(row["Total Damage ($Mil)"]),
         int(row["Total Damage Description"]),
         int(row["Total Houses Destroyed"]),
         int(row["Total Houses Damaged"]),
              row["Country"],row["Location Name"])
               cursor.execute(query)
          conn.commit()
          conn.close()
           
     except:
          print(Back.RED,Fore.WHITE,"!! Could not extract the models !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! The models was extracted succesfully !!",Back.RESET)                    
        
      
    
     
def Load_data():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor() 
     try:
          fichero = open('./DB/CargarModels.sql')
          sql= fichero.read() 
          cursor.execute(sql)
          conn.commit()
          conn.close()
          
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the info !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! The info was loaded succesfully !!",Back.RESET)                    
     
     


def reporte1():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte1.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)                    
     

def reporte2():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte2.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)




def reporte3():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte3.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)

def reporte4():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte4.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)

def reporte5():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte5.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)

def reporte6():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte6.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)

def reporte7():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte7.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)

def reporte8():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte8.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)

def reporte9():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte9.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)

def reporte10():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor()
     try:
          fichero = open('./DB/Reporte10.sql')
          sql= fichero.read()
          cursor.execute(sql)
          df = pd.DataFrame(cursor)
          print (df)
          conn.commit()
          conn.close()
     except:
          print(Back.RED,Fore.WHITE,"!! Could not load the query !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! Query succesfully !!",Back.RESET)
