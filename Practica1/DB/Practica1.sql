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

















