/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [First],[Last], [Affiliation], count([Affiliation])
  FROM [HeartDiseaseDB].[dbo].[tableAffiliations]
  GROUP BY [First],[Last], [Affiliation]


SELECT TOP (10) [PMID], [Affiliation], count([Affiliation])
  FROM [HeartDiseaseDB].[dbo].[tableAffiliations]
  GROUP BY [PMID], [Affiliation]


SELECT TOP (1000) [PMID], [Affiliation], count([Affiliation])
FROM [HeartDiseaseDB].[dbo].[tableAffiliations]
GROUP BY [Affiliation], [PMID]
HAVING count([Affiliation]) > 1  

SELECT [PMID], count(distinct([Affiliation]))
FROM [HeartDiseaseDB].[dbo].[tableAffiliations]
GROUP BY [PMID]
HAVING count(distinct([Affiliation])) > 1  

