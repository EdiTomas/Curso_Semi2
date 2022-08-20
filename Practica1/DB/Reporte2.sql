select  Anio, SUM(Tsunami_event_validity) as evento from Tsunami
Group By Anio
order by Anio Asc 