CREATE VIEW jcrJoin AS
SELECT REPLACE([ISO_ABBREV], '.', '') as Abbrev, [IMPACT_FACTOR], 
[5YR_IMPACT_FACTOR], [Journal/Book], [Publication Year], 
[Affiliation] FROM [HeartDiseaseDB].[dbo].[tableJCR_2019] 
INNER JOIN [HeartDiseaseDB].[dbo].[tablePublications] 
ON [Journal/Book] = REPLACE([ISO_ABBREV], '.', '')

-- where = [ISO_ABBREV] minus periods

select top 100 * from [HeartDiseaseDB].[dbo].[jcrJoin]

select top 100 * from [HeartDiseaseDB].[dbo].[tableJCR_2019]

select top 100 * from [HeartDiseaseDB].[dbo].[tablePublications]

select [PMID] from [HeartDiseaseDB].[dbo].[tablePublications]

-- need to remove periods from ISO_ABBREV column in jcr table

--interpublication view
--same publication, different institution

select [PMID], count([Affiliation]) from [HeartDiseaseDB].[dbo].[tablePublications]
GROUP by [PMID], [Affiliation]

-- no interpublications??


--intrapublication view
--2 or more authors on same publication and the same institution

select [PMID], count([Affiliation]), count([PMID]) from [HeartDiseaseDB].[dbo].[tablePublications]
GROUP by [PMID], [Affiliation]

