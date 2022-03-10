
create view researchFunding AS

SELECT [Project Terms], [Project Title], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State],
 [Organization Type], LEFT([Organization Zip],5) as 'Zip Code', [County], [Fiscal Year], [Total Cost] 
 
 FROM dbo.tableFunding

JOIN [dbo].[zipCode] ON LEFT([Organization Zip], 5) = [ZIP Code]

WHERE ([Project Terms] LIKE '%Heart Disease%') AND [Total Cost] != ''
