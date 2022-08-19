from colorama import Back,Fore, init
import pandas as pd
from config import db_creds
init()






#cursor.execute('SELECT * FROM PROFESION ')
    #for row in cursor:
    #   print("ID=%d, Name=%s" % (row['cod_prof'], row['nombre']))
    
def Delete_Models():
     conn = db_creds.obtener_conection()
     cursor = conn.cursor(as_dict=True)  
     try:
          delete_table ='''
               IF   OBJECT_ID('Tsunami') IS NOT NULL 
                    AND OBJECT_ID('Country') IS NOT NULL
                    AND OBJECT_ID('Tiempo') IS NOT NULL
                    AND OBJECT_ID('Desastres') IS NOT NULL
                    
               BEGIN
               DROP TABLE Desastres
               DROP TABLE Tsunami
               DROP TABLE Country
               DROP TABLE Tiempo
               DROP TABLE damage
               
               
               END
               '''
          cursor.execute(delete_table)
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
          create_table ='''
               IF OBJECT_ID('Tsunami') IS  NULL 
                 AND OBJECT_ID('Country') IS  NULL
                 AND OBJECT_ID('Tiempo') IS  NULL
                 AND OBJECT_ID('damage') IS  NULL
                 AND OBJECT_ID('Desastres') IS  NULL
               BEGIN
               
               create table Tsunami (
 cod_Tsunami int identity(1,1) primary key,
 Tsunami_event_validity int null,
 Tsunami_cause_code int null,
 Tsunami_Magnitude decimal null,
 Tsunami_Intensity decimal null,
 Earthquake_magnitude decimal null,
 Deposits int null,
 Maximum_Water_Height decimal null,
 Number_of_Runups int null 
)

create table Country(
  cod_country int identity(1,1) primary key,
  Country varchar(200) null,
  Location_Name varchar(100) null,
  Latitude decimal null,
  Longitude decimal null
)

create table Tiempo(
  cod_tiempo int identity(1,1) primary key,
  Year int null, 
  Mo int null, 
  Dy int null, 
  Hr int null, 
  Mn int null,
  Sec DECIMAL NULL
)


create table damage(
  cod_damage int identity(1,1) primary key,
  Total_Deaths int null,
  Total_Missing int null,
  Total_Missing_Description int null,
  Total_Injuries int null,
  Total_Damage decimal null ,
  Total_Damage_Description int null,
  Total_Houses_Destroyed int null,
  Total_Houses_Damaged int null
)

create table Desastres(
  cod_desastres int identity(1,1) primary key,
  cod_Tsunami int,
  cod_country int,
  cod_tiempo int,
  cod_damage int,
  constraint fK_Tsunami_cod_Tsunami foreign key (cod_Tsunami) REFERENCES Tsunami (cod_Tsunami), 
  constraint fK_Country_cod_country foreign key (cod_country) REFERENCES Country (cod_country), 
  constraint fK_Tiempo_cod_tiempo foreign key (cod_tiempo) REFERENCES Tiempo (cod_tiempo), 
  constraint fK_Tiempo_cod_damage foreign key (cod_damage) REFERENCES damage (cod_damage) 
)
 


               END
               '''
          cursor.execute(create_table)
          conn.commit()
          conn.close()
          
     except:
          print(Back.RED,Fore.WHITE,"!! Could not create the models !!",Back.RESET)                    
          return
     print(Back.GREEN,Fore.BLACK,"!! The models was created succesfully !!",Back.RESET)                    
            
    









 #df = Extract_info('historial_tsumamis.csv')
     
     #for name_colum in df.columns.tolist():
          
     #for row in df.iterrows():
             #sql = "INSERT INTO `Marketing` (`" +name_colum + "`) VALUES (" + "%s,"*(len(row)-1) + "%s)"
            # print(sql,row[1])
     #print(row) 
     #print(df)

def Extract_info(file_to_process):
     dataframe = pd.read_csv(file_to_process)
     return dataframe

def Extracion():
     #df = Extract_info('prueba.csv')
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
     df["Location Name"].fillna("NULL", inplace = True)

     conn = db_creds.obtener_conection()
     cursor = conn.cursor(as_dict=True)  
     
     for index, row in df.iterrows():
        cursor.execute("INSERT INTO Desastres(Year,Mo,Dy,Hr,Mn,Sec,Tsunami_event_validity,Tsunami_cause_code,Earthquake_magnitude,Deposits,Latitude,Longitude,Maximun_water_height,Number_of_runups,Tsunami_magnitude,Tsunami_intensity,Total_deaths,Total_missing,Total_missing_description,Total_injuries,Total_damage,Total_damage_description,Total_houses_destroyed,Total_houses_damaged,Country,Location_name) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",row["Year"],row["Mo"],row["Dy"],row["Hr"],row["Mn"],row["Sec"],
        row["Tsunami Event Validity"],row["Tsunami Cause Code"],row["Earthquake Magnitude"],row["Deposits"],
        row["Latitude"],row["Longitude"],row["Maximum Water Height (m)"],row["Number of Runups"],row["Tsunami Magnitude (Iida)"],row["Tsunami Intensity"],
        row["Total Deaths"],row["Total Missing"],row["Total Missing Description"],row["Total Injuries"],row["Total Damage ($Mil)"],row["Total Damage Description"],
        row["Total Houses Destroyed"],row["Total Houses Damaged"],row["Country"],row["Location Name"])
        conn.commit()
        conn.close()
          
    
     

#def Transform_data():
    # df = pd.DataFrame(datos)
   #  print(df)

#def Transform_Load():
 #    df = pd.DataFrame(datos)
  #   print(df)
