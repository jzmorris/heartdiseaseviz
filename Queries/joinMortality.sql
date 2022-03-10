CREATE VIEW [joinMortality] AS

select Year,County, Strata, Strata_Name, Cause_Desc, SUM(ISNULL(Count, 0))
from [HeartDiseaseDB].[dbo].[deaths_county_2020_2021] 
where Cause_Desc = 'Diseases of heart'
group by [County],[Year],[Strata],[Strata_Name], [Cause_Desc]

UNION

select Year,County, Strata, Strata_Name, Cause_Desc, SUM(ISNULL(Count, 0))
from [HeartDiseaseDB].[dbo].[deaths_county_2014_2019] 
where Cause_Desc = 'Diseases of heart' OR Cause_Desc = 'All causes (total)'
group by [County],[Year],[Strata],[Strata_Name], [Cause_Desc]

-- remove strata name if we want by county by strata view


select * from [HeartDiseaseDB].[dbo].[deaths_county_2014_2019] WHERE [Strata] = 'Total Population' AND County = 'Alameda'

select top 100 * from [HeartDiseaseDB].[dbo].[mortalityView]

select top 100 * from [HeartDiseaseDB].[dbo].[popDeath]

create view [countyMortality] AS

select m.Year, m.County, m.Strata, m.Strata_Name, m.Cause_Desc, m.Count, p.Population as 'Population (all causes)'  from [HeartDiseaseDB].[dbo].[mortalityView] m

join [HeartDiseaseDB].[dbo].[popDeath] p on m.Year = p.Year AND m.County = p.County 
