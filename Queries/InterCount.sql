create view interCount as

with countPMID as (

SELECT PMID, COUNT(DISTINCT Affiliation) AS affCount
FROM   dbo.tableAffiliations
GROUP BY PMID
HAVING (COUNT(DISTINCT Affiliation) > 1)
),
affCount as (
SELECT a.PMID, a.Affiliation, b.affCount
FROM   dbo.tableAffiliations
AS a LEFT OUTER JOIN
countPMID AS b ON a.PMID = b.PMID

)

SELECT Affiliation, COUNT(*) AS interCount
FROM   affCount
GROUP BY Affiliation
HAVING (Affiliation LIKE '%California%' ) OR (Affiliation LIKE '%CA%' COLLATE Latin1_General_BIN)



