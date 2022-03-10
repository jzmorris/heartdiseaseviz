SELECT TOP (1000) [ID]
      ,[NIH Spending Categorization]
      ,[Project Terms]
      ,[Project Title]
      ,[Administering IC]
      ,[Project Number]
      ,[Project Start Date]
      ,[Project End Date]
      ,[Organization Name]
      ,[Organization City]
      ,[Organization State]
      ,[Organization Type]
      ,[Organization Zip]
      ,[Fiscal Year]
      ,[Total Cost]
      ,[Total Cost (Sub Projects)]
      ,[Funding IC(s)]
      ,[Direct Cost IC]
      ,[InDirect Cost IC]
      ,[Total Cost IC]
	  ,[County]
  FROM [HeartDiseaseDB].[dbo].[testFunds] 

  JOIN [HeartDiseaseDB].[dbo].[zipCode] ON LEFT([Organization Zip], 5) = [ZIP Code]



 SELECT [Project Terms], [Project Title], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State],
 [Organization Type], LEFT([Organization Zip],5) as 'Zip Code', [County], [Fiscal Year], [Total Cost] 
 
 FROM dbo.fundingView

JOIN [dbo].[zipCode] ON LEFT([Organization Zip], 5) = [ZIP Code]

WHERE ([Project Terms] LIKE '%Heart Disease%') AND [Total Cost] != ''
