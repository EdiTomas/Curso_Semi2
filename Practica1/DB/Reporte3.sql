select  Anio, Sum(Tsunami_event_validity )as evento,  Pais.Country  from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country,Anio
order by Anio Asc 