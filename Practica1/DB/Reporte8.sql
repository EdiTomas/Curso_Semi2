select TOP (5)  Pais.Country, sum(Total_houses_destroyed) as Total_houses_destroyed    from Tsunami
inner join Locationname on Locationname.id_location_name = Tsunami.id_location_name
inner join Pais on Pais.id_pais = Locationname.id_pais 
Group By Pais.Country
order by Total_houses_destroyed  Desc 
