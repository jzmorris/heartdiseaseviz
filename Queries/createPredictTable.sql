--publications needs to be an outer join on the list of all counties
--list of all counties in California
--to outer join so we have zeros for data not collected for certain counties
--then we can see counties that are neglected
with initList as (

select DISTINCT([County]), '2015' as 'Year' from dbo.zipCode
UNION
select DISTINCT([County]), '2016' as 'Year' from dbo.zipCode
UNION
select DISTINCT([County]), '2017' as 'Year' from dbo.zipCode
UNION
select DISTINCT([County]), '2018' as 'Year' from dbo.zipCode
UNION
select DISTINCT([County]), '2019' as 'Year' from dbo.zipCode),

publications AS (

select count([PMID]) as 'Publication Count', [County], [Publication Year] 
from dbo.tablePublications p join dbo.affCounty a on p.Affiliation = a.Affiliation 
group by [Publication Year],[County] HAVING [Publication Year] BETWEEN '2015' AND '2019'),

funding AS (

select [County], [Year] as 'Year', SUM(Convert(int, [Total Cost])) as 'Sum of Total Cost', count(*) as 'Project Count' 

from dbo.researchFunding group by [County], [Year]
),

water AS (

select  b.[County], a.[Submission Year], AVG(Convert(float, a.[Sample Measure (mg L)])) as 'AVG Lead' 
from dbo.waterCounty a join dbo.zipCode b on LEFT(a.[Zip Code], 5) = b.[ZIP Code] 
group by b.[County], a.[Submission Year]

),

aqi AS (

select [County], [Year], 
Convert(int, [Unhealthy for Sensitive Groups Days]) +
Convert(int,[Unhealthy Days]) + 
Convert(int,[Very Unhealthy Days]) 
+ Convert(int,[Hazardous Days]) as 
'combinedBadDays' from dbo.aqiCounty group by [County], [Year],
[Unhealthy for Sensitive Groups Days], [Unhealthy Days], 
[Very Unhealthy Days], [Hazardous Days]

),
mortality AS (
	select [County], [Year], [Count], 
	[Population (all causes)],
	
	CASE when [Population (all causes)] = 0 then 0 else
	[Count] * 1.0 / [Population (all causes)] end as 'percentageDeaths'
	from dbo.countyMortality WHERE [Strata_Name] = 'Total Population'

)
select b.Year, b.County, a.[Publication Count], 
c.[Sum of Total Cost], c.[Project Count], d.[AVG Lead], 
e.combinedBadDays, f.Count, f.[Population (all causes)], f.percentageDeaths
from publications a 
full outer join initList b on a.County = b.County AND a.[Publication Year] = b.[Year]
full outer join funding c on b.County = c.County AND b.Year = c.[Year]
full outer join water d on d.County = b.County AND b.Year = d.[Submission Year]
full outer join aqi e on e.County = b.County AND e.Year = b.Year
full outer join mortality f on f.County = b.County AND b.Year = f.Year
where b.Year BETWEEN '2015' AND '2019'
