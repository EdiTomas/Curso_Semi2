select TOP (5) Anio, sum(Total_deaths) as Total_Deaths    from Tsunami
Group By Anio
order by Total_Deaths  Desc 