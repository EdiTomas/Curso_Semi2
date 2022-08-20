create database Practica1;
use Practica1;
--USE master ;  
--Drop database Practica1
SELECT Name from sys.tables;
select * from Tsunami
select * from Country
select * from temptsunami

               DROP TABLE Desastres
               DROP TABLE Tsunami
               DROP TABLE Country
               DROP TABLE Tiempo
               DROP TABLE damage
               DROP TABLE temptsunami
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

select * from Desastres 


insert into temptsunami()

select * from temptsunami