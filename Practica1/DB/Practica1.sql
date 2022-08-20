create database Practica1;
use Practica1;
--USE master ;  
--Drop database Practica1
SELECT Name from sys.tables;




select * from temptsunami
select * from Pais 
select * from Tsunami
select * from Locationname

select count(*) as Total from Pais
UNION ALL
select count(*) from Tsunami
UNION ALL
select count(*) from Locationname


select  Anio, Sum(Tsunami_event_validity )as evento,  Pais.Country  from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country,Anio
order by Anio Asc 

select   AVG(Total_damage) as Total_Damage,  Pais.Country  from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country
order by Pais.Country Asc 

--Reṕorte 5

select TOP (5)  Pais.Country, sum(Total_deaths) as Total_Deaths    from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country
order by Total_Deaths  Desc 

--Reṕorte 6
select TOP (5) Anio, sum(Total_deaths) as Total_Deaths    from Tsunami
Group By Anio
order by Total_Deaths  Desc 

--Reṕorte 7

select TOP (5) Anio, Sum(Tsunami_event_validity)as evento from Tsunami
Group By Anio
order by evento  Desc 

--Reṕorte 8

select TOP (5)  Pais.Country, sum(Total_houses_destroyed) as Total_houses_destroyed    from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country
order by Total_houses_destroyed  Desc 

--Reṕorte 9



select TOP (5)  Pais.Country, sum(Total_houses_damaged) as Total_houses_damaged    from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country
order by Total_houses_damaged  Desc 


--Reṕorte 10

select   Pais.Country, AVG(Maximun_water_height) as Maximun_water_height    from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country
order by Pais.Country  ASC 
















/*
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


insert into Desastres (cod_Tsunami ,cod_country,cod_tiempo,cod_damage) 
select Tsunami.cod_Tsunami , Country.cod_country,Tiempo.cod_tiempo, damage.cod_damage from temptsunami 
INNER JOIN Tsunami ON  temptsunami.Tsunami_event_validity = Tsunami.Tsunami_event_validity 
INNER JOIN Country ON  temptsunami.Country = Country.Country 
INNER JOIN Tiempo  ON  temptsunami.Anio  = Tiempo.Year
INNER JOIN damage  ON  temptsunami.Total_deaths = damage.Total_Deaths 
GROUP by Tsunami.cod_Tsunami , Country.cod_country,Tiempo.cod_tiempo, damage.cod_damage
;

insert into Desastres (cod_Tsunami)
select Tsunami.cod_Tsunami  from temptsunami 
INNER JOIN Tsunami ON  temptsunami.Tsunami_event_validity = Tsunami.Tsunami_event_validity
*/



