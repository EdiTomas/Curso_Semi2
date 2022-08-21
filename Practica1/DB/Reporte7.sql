
select TOP (5) Anio, Sum(Tsunami_event_validity)as evento from Tsunami
Group By Anio
order by evento  Desc