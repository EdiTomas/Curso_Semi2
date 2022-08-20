 IF OBJECT_ID('Tsunami') IS  NULL 
                 AND OBJECT_ID('Country') IS  NULL
                 AND OBJECT_ID('Tiempo') IS  NULL
                 AND OBJECT_ID('damage') IS  NULL
                 AND OBJECT_ID('temptsunami') IS  NULL
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
    Location_Name varchar(600) null,
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

CREATE TABLE temptsunami(
    temptsunami int identity(1,1) primary key,
    Anio INT NULL,
    Mes INT NULL,
    Dia INT NULL,
    Hora INT NULL,
    Minuto INT NULL,
    Segundo DECIMAL NULL,
    Tsunami_event_validity INT NULL,
    Tsunami_cause_code INT NULL,
    Earthquake_magnitude DECIMAL NULL,
    Deposits INT NULL,
    Latitude DECIMAL NULL,
    Longitude DECIMAL NULL,
    Maximun_water_height DECIMAL NULL,
    Number_of_runups INT NULL,
    Tsunami_magnitude DECIMAL NULL,
    Tsunami_intensity DECIMAL NULL,
    Total_deaths INT NULL,
    Total_missing INT NULL,
    Total_missing_description INT NULL,
    Total_injuries INT NULL,
    Total_damage DECIMAL NULL,
    Total_damage_description INT NULL,
    Total_houses_destroyed INT NULL,
    Total_houses_damaged INT NULL,
    Country VARCHAR(200) NULL,
    Location_name VARCHAR(600) NULL
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
