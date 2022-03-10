/****** Script for SelectTopNRows command from SSMS  ******/
select * into [cdcWonder14-19] from (
SELECT [Ten-Year Age Groups]
      ,[Cause of death]
      ,[Hispanic Origin]
      ,[Race]
      ,[Gender]
      ,[Deaths]
      ,[Population]
      ,[Crude Rate]
      ,[Year]
  FROM [HeartDiseaseDB].[dbo].['2014$']

  UNION

  SELECT [Ten-Year Age Groups]
      ,[Cause of death]
      ,[Hispanic Origin]
      ,[Race]
      ,[Gender]
      ,[Deaths]
      ,[Population]
      ,[Crude Rate]
      ,[Year]
  FROM [HeartDiseaseDB].[dbo].['2015$']

  UNION

  SELECT [Ten-Year Age Groups]
      ,[Cause of death]
      ,[Hispanic Origin]
      ,[Race]
      ,[Gender]
      ,[Deaths]
      ,[Population]
      ,[Crude Rate]
      ,[Year]
  FROM [HeartDiseaseDB].[dbo].['2016$']

  
  UNION

  SELECT [Ten-Year Age Groups]
      ,[Cause of death]
      ,[Hispanic Origin]
      ,[Race]
      ,[Gender]
      ,[Deaths]
      ,[Population]
      ,[Crude Rate]
      ,[Year]
  FROM [HeartDiseaseDB].[dbo].['2017$']

  
  UNION

  SELECT [Ten-Year Age Groups]
      ,[Cause of death]
      ,[Hispanic Origin]
      ,[Race]
      ,[Gender]
      ,[Deaths]
      ,[Population]
      ,[Crude Rate]
      ,[Year]
  FROM [HeartDiseaseDB].[dbo].['2018$']

  
  UNION

  SELECT [Ten-Year Age Groups]
      ,[Cause of death]
      ,[Hispanic Origin]
      ,[Race]
      ,[Gender]
      ,[Deaths]
      ,[Population]
      ,[Crude Rate]
      ,[Year]
  FROM [HeartDiseaseDB].[dbo].['2019$'] 
  ) a

  select * from [HeartDiseaseDB].[dbo].[cdcWonder14-19] 

  select top 100 * from [HeartDiseaseDB].[dbo].[mortalityView]