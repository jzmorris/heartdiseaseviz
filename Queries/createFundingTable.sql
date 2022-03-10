select * into tableFunding FROM(

SELECT [ID], [NIH Spending Categorization], [Project Terms], [Project Title], [Administering IC], [Project Number], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State], [Organization Type], [Organization Zip], [Fiscal Year], [Total Cost], [Total Cost (Sub Projects)], [Funding IC(s)], [Direct Cost IC], 
           [InDirect Cost IC], [Total Cost IC]
FROM   [HeartDiseaseDB].[dbo].[table2015funding]
UNION
SELECT [ID], [NIH Spending Categorization], [Project Terms], [Project Title], [Administering IC], [Project Number], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State], [Organization Type], [Organization Zip], [Fiscal Year], [Total Cost], [Total Cost (Sub Projects)], [Funding IC(s)], [Direct Cost IC], 
           [InDirect Cost IC], [Total Cost IC]
FROM   [HeartDiseaseDB].[dbo].[table2016funding]
UNION
SELECT [ID], [NIH Spending Categorization], [Project Terms], [Project Title], [Administering IC], [Project Number], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State], [Organization Type], [Organization Zip], [Fiscal Year], [Total Cost], [Total Cost (Sub Projects)], [Funding IC(s)], [Direct Cost IC], 
           [InDirect Cost IC], [Total Cost IC]
FROM   [HeartDiseaseDB].[dbo].[table2017funding]
UNION
SELECT [ID], [NIH Spending Categorization], [Project Terms], [Project Title], [Administering IC], [Project Number], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State], [Organization Type], [Organization Zip], [Fiscal Year], [Total Cost], [Total Cost (Sub Projects)], [Funding IC(s)], [Direct Cost IC], 
           [InDirect Cost IC], [Total Cost IC]
FROM   [HeartDiseaseDB].[dbo].[table2018funding]
UNION
SELECT [ID], [NIH Spending Categorization], [Project Terms], [Project Title], [Administering IC], [Project Number], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State], [Organization Type], [Organization Zip], [Fiscal Year], [Total Cost], [Total Cost (Sub Projects)], [Funding IC(s)], [Direct Cost IC], 
           [InDirect Cost IC], [Total Cost IC]
FROM   [HeartDiseaseDB].[dbo].[table2019funding]
UNION
SELECT [ID], [NIH Spending Categorization], [Project Terms], [Project Title], [Administering IC], [Project Number], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State], [Organization Type], [Organization Zip], [Fiscal Year], [Total Cost], [Total Cost (Sub Projects)], [Funding IC(s)], [Direct Cost IC], 
           [InDirect Cost IC], [Total Cost IC]
FROM   [HeartDiseaseDB].[dbo].[table2020funding]
UNION
SELECT [ID], [NIH Spending Categorization], [Project Terms], [Project Title], [Administering IC], [Project Number], [Project Start Date], [Project End Date], [Organization Name], [Organization City], [Organization State], [Organization Type], [Organization Zip], [Fiscal Year], [Total Cost], [Total Cost (Sub Projects)], [Funding IC(s)], [Direct Cost IC], 
           [InDirect Cost IC], [Total Cost IC]
FROM   [HeartDiseaseDB].[dbo].[table2021funding]) a
