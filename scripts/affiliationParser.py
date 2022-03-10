# Jarod Morris
# Senior Project
# 10/11/21
# A python parser to grab scrape xmls for publications and pull 
# full affiliation and author information

import requests
from lxml import html
import pandas as pd

def main():

    dataFrame = []
    columnList = ["PMID", "First", "Last", "MI", "Affiliation"]
    #file with list of PMID from SQL query
    pmids = open("PMIDs.csv")
    #pmids = open("testID.txt")
    for id in pmids:
        strId = str(id).strip('\n')
        link = "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=" + strId + "&retmode=xml"

        #sometimes we must call the request twice, first connection fails
        try:
            pageContent = requests.get(link)
        except:
            pageContent = requests.get(link)

        tree = html.fromstring(pageContent.content)
     
        testPath = tree.xpath('//ancestor-or-self::authorlist')

        for x in testPath[0]:
            #first 3 elements are lastname, forename, MI
            #followed by N elements for affiliations
            #if len is less than 2, author but no affiliations
            if len(x) > 2:
                firstName = x[0].text_content()
                lastName = x[1].text_content()
                middleI = x[2].text_content()
                for i in range(3,len(x)):        
                    aff = x[i].text_content().split()
                    #remove email address from affiliation to create more matches
                    for j in aff:
                        if '@' in j:
                            aff.remove(j)
                            
                    parsed = " ".join(aff)
                    n = parsed.split('; ')
                    for affil in n:
                        dataFrame.append([strId, lastName, firstName, middleI, affil])
                    
    df = pd.DataFrame(dataFrame, columns = columnList)
    df.to_csv('OUTPUT.csv')

    return 

def tester():

    link = "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=30518876&retmode=xml"
    pageContent = requests.get(link)
    tree = html.fromstring(pageContent.content)

    testPath = tree.xpath('//ancestor-or-self::authorlist')


    for x in testPath[0]:
        #first 3 elements are lastname, forename, MI
        #followed by N elements for affiliations
        print(len(x))
        firstName = x[0].text_content()
        lastName = x[1].text_content()
        middleI = x[2].text_content()
        for i in range(3,len(x)):        
            #print(x[i].text_content()+'\n')
            aff = x[i].text_content().split()
            #print(aff)
            for j in aff:
                if '@' in j:
                    aff.remove(j)
            #print(" ".join(aff))
            print(["30518876", lastName, firstName, middleI, " ".join(aff)])

        #print([lastName, firstName, middleI] + aff)
    #WE need to remove email addresses from affiliations

    #call .split()
    #if token contains @ remove
    #then combine them

    #lastName = tree.xpath('//authorlist/author/lastname')
    #firstName = tree.xpath('//authorlist/author/forename')
    #affiliation = tree.xpath('//authorlist/author/affiliationinfo/affiliation')
    
#tester()

main()
