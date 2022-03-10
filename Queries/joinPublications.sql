select top 100 * from [HeartDiseaseDB].[dbo].[tableAffiliations]
select [PMID] from [HeartDiseaseDB].[dbo].[tablePublications]

select * from [HeartDiseaseDB].[dbo].[deaths_county_2014_2019] where [Cause_Desc] = 'Diseases of heart'
select top 100 * from [HeartDiseaseDB].[dbo].[jcrJoin]

create view testFunds as  
select * from [HeartDiseaseDB].[dbo].[fundingView] where [Project Terms] LIKE '%Heart Disease%'

WHERE CONTAINS([Project Terms], 'Heart Disease')

--filter publications table view
SELECT DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE 
     TABLE_NAME = 'codView' AND 
     COLUMN_NAME = 'Deaths'

--check data type for column in table
SELECT DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE 
     TABLE_NAME = 'tablePublications' AND 
     COLUMN_NAME = 'Publication Year'
 
--update column data type for tableau relations
ALTER TABLE [cod15-19_aa]
ALTER COLUMN [Deaths] BIGINT; 

SELECT DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE 
     TABLE_NAME = 'mortalityView' AND 
     COLUMN_NAME = 'Year'


-- uniq publication count by affiliation
select [Affiliation], count(*) from [HeartDiseaseDB].[dbo].[tablePublications]
group by [Affiliation]

-- count by affiliation and journal name
select [Affiliation], [Journal/Book], count(*) from [HeartDiseaseDB].[dbo].[tablePublications]
group by [Affiliation], [Journal/Book]

--inter publication
-- same publication vs different institution

select [PMID], count(*) from [HeartDiseaseDB].[dbo].[tablePublications]
group by [PMID]

select count(*) from [HeartDiseaseDB].[dbo].[tablePublications]
group by [PMID]
