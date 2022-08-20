/*
insert into Tsunami (Tsunami_event_validity,
                     Tsunami_cause_code,
                     Tsunami_Magnitude,
                     Tsunami_Intensity,
                     Earthquake_magnitude,
                     Deposits,
                     Maximum_Water_Height
                     ,Number_of_Runups)
select Tsunami_event_validity,
       Tsunami_cause_code,
       Tsunami_magnitude,
       Tsunami_intensity,
       Earthquake_magnitude,
       Deposits,
       Maximun_water_height,   
       Number_of_runups
from  temptsunami
GROUP by Tsunami_event_validity,Tsunami_cause_code,Tsunami_magnitude,Tsunami_intensity,
       Earthquake_magnitude,Deposits,Maximun_water_height,Number_of_runups


insert into Tiempo (Year, Mo , Dy , Hr , Mn ,Sec )
select  Anio ,Mes ,Dia ,Hora,Minuto ,Segundo from temptsunami 
GROUP by Anio ,Mes ,Dia ,Hora,Minuto ,Segundo    


insert into Country(Country,Location_Name,Latitude,Longitude)
select Country, Location_name,  Latitude ,Longitude from temptsunami 
GROUP BY Country, Location_name,  Latitude ,Longitude



insert into damage (Total_Deaths,Total_Missing,Total_Missing_Description ,
                    Total_Injuries,Total_Damage,Total_Damage_Description,
                    Total_Houses_Destroyed,Total_Houses_Damaged )
select Total_deaths,Total_missing ,Total_missing_description ,
       Total_injuries ,Total_damage ,Total_damage_description ,
       Total_houses_destroyed ,Total_houses_damaged  from temptsunami
       GROUP by Total_deaths,Total_missing ,Total_missing_description ,
       Total_injuries ,Total_damage ,Total_damage_description ,
       Total_houses_destroyed ,Total_houses_damaged 
   
*/

insert into Pais(Country)
select Country from temptsunami 
GROUP BY Country
  
insert into Locationname (Location_name,id_pais)
select Location_name, Pais.id_pais  from temptsunami 
INNER JOIN Ṕais ON  temptsunami.Country = Ṕais.Country 
GROUP BY Location_name, Pais.id_pais













