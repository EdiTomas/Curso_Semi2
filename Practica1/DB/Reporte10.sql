select   Pais.Country, AVG(Maximun_water_height) as Maximun_water_height    from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country
order by Pais.Country  ASC 
