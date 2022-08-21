

insert into Pais(Country)
select Country from temptsunami 
GROUP BY Country;

  
insert into Locationname (Location_name,id_pais)
select temptsunami.Location_name,Pais.id_pais from temptsunami 
INNER JOIN Pais ON  temptsunami.Country = Pais.Country 
GROUP BY temptsunami.Location_name,Pais.id_pais 
;






insert into Tsunami (Anio,Mes ,Dia ,Hora,Minuto,Segundo,
    Tsunami_event_validity,Tsunami_cause_code,
    Earthquake_magnitude,Deposits,Latitude,Longitude,Maximun_water_height,Number_of_runups,
    Tsunami_magnitude,Tsunami_intensity,Total_deaths ,Total_missing ,Total_missing_description ,
    Total_injuries ,Total_damage ,Total_damage_description,Total_houses_destroyed ,
    Total_houses_damaged,id_location_name )
   
select Anio,Mes ,Dia ,Hora,Minuto,Segundo,
    Tsunami_event_validity,Tsunami_cause_code,
    Earthquake_magnitude,Deposits,Latitude,Longitude,Maximun_water_height,Number_of_runups,
    Tsunami_magnitude,Tsunami_intensity,Total_deaths ,Total_missing ,Total_missing_description ,
    Total_injuries ,Total_damage ,Total_damage_description,Total_houses_destroyed ,
    Total_houses_damaged, Locationname.id_location_name  from temptsunami
INNER JOIN Locationname ON  temptsunami.Location_name = Locationname.Location_name 
GROUP BY Anio,Mes ,Dia ,Hora,Minuto,Segundo,
    Tsunami_event_validity,Tsunami_cause_code,
    Earthquake_magnitude,Deposits,Latitude,Longitude,Maximun_water_height,Number_of_runups,
    Tsunami_magnitude,Tsunami_intensity,Total_deaths ,Total_missing ,Total_missing_description ,
    Total_injuries ,Total_damage ,Total_damage_description,Total_houses_destroyed ,
    Total_houses_damaged, Locationname.id_location_name;




















