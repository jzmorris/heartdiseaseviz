CREATE VIEW "codView" AS

select [Five-Year Age Groups], 
[Cause of death], [Hispanic Origin], 
[Race], [Deaths], [Population], [Crude Rate], [% of Total Deaths] 
from [HeartDiseaseDB].[dbo].[cod15-19_asian]

UNION

select [Five-Year Age Groups], 
[Cause of death], [Hispanic Origin], 
[Race], [Deaths], [Population], [Crude Rate], [% of Total Deaths]  
from [HeartDiseaseDB].[dbo].[cod15-19_black]

UNION

select [Five-Year Age Groups], 
[Cause of death], [Hispanic Origin], 
[Race], [Deaths], [Population], [Crude Rate], [% of Total Deaths]  
from [HeartDiseaseDB].[dbo].[cod15-19_white]

UNION

select [Five-Year Age Groups], 
[Cause of death], [Hispanic Origin], 
[Race], [Deaths], [Population], [Crude Rate], [% of Total Deaths]  
from [HeartDiseaseDB].[dbo].[cod15-19_aa]




