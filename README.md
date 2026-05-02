# bchcnft-prescribing-activity

## Overview

This is my data analysis project covering prescribing data for a selected NHS foundation trust over 2025.

The data used in this project is sourced from the NHS Business Service Authority's Open Data Portal, subject to NHSBSA Copyright 2025 under an Open Government License. You can find the relevant datasets by visiting the pages below.

- [English Prescribing Dataset (EPD) with SNOMED Code](https://opendata.nhsbsa.net/dataset/english-prescribing-dataset-epd-with-snomed-code)
- [BNF Code Information - Historic](https://opendata.nhsbsa.net/dataset/bnf-code-information-historic)

***Note that the monthly datasets in [db-setup](db-setup) are whittled down versions of the original datasets; they were filtered on a selected value of the field `PCO_NAME`, i.e. a foundation trust/trust, in order to reduce the number of rows to a reasonable number. There is a pre-built filter if you visit each page in the 'Data and Resources' section which allows you to do this before you retrieve data, or you could instead try to work with the complete data.***

***Also note that [the version 88 BNF code information dataset](db-setup/code.csv) is used in order to match the time period of the data. New BNF codes are added every so often but the NHS makes significant changes to the BNF code on a yearly basis.***

## Methodology

The aim of this project is to document categories of prescriptions where there are high costs but also where there are huge savings opportunities.

A major aspect of this analysis is the comparison between the variation in costs of equivalent drugs (either generic or branded), which are drugs with the same content, strength and formulation. Although the NHS recommends that generic equivalents be prescribed whenever available, this is usually on the basis of them being cheaper, which this project will show to not always be the case in every group of equivalents.

As a quick sidenote, I should mention that there are also potential savings opportunities in comparing the use of first-line treatments, second-line treatments, and so on for any given condition, but I am not a healthcare professional and therefore do not have the knowledge to distinguish between them. This analysis shall be reserved for anyone who is more experienced than me in that regard.

Returning to the previous point, there is no inherent mapping table for equivalent drugs provided by NICE, so I had to create my own based on limited information. I don't have this table as a standalone text file, but the SQL code for the mapping is contained in one of the queries in [this project file](project-files/cleaning.sql) as a combination of 4 CTEs. The logic between this mapping is based on the fact that the first 9 characters of the BNF code of each equivalent drug are the same, and that the final 2 characters of the BNF code of branded drugs match characters 12 and 13 of the BNF code of their generic equivalent. Generic drugs are marked by the string 'AA' in characters 10 and 11 of their BNF code. [The Bennett Institute for Applied Data Science](https://www.bennett.ox.ac.uk/blog/2017/04/prescribing-data-bnf-codes/) gives a brief explanation of the structure of BNF codes with some examples. This mapping allows me to assign row numbers to partition drugs with equivalents into drug groups so they can be compared with each other.

The comparison between equivalents is based on Net Ingredient Cost (NIC) because it is proportional to the prescribed quantity of a drug, whereas the actual costs take into account other things like discounts or packaging costs. I define the metric of savings as the total reduction in NIC if every item in each drug group was ordered at the NIC of a specific option. I took advantage of Tableau's filter option and window sum to calculate this metric. If the foundation trust had always chose to order the cheapest option across all groups of equivalent drugs, then it would have saved around £295k in NIC, which in prospect is similar to the actual savings if actual costs were considered instead, because NICs and actual costs do not differ by much on the prescription level. I used a separate SQL file to execute the query to obtain this figure which is not included in this repository, you can verify this yourself.

As a final note, I am aware that there is much more that can be investigated and that this project can be scaled up to cover the entirety of the NHS, but I prioritised curating a more cohesive story through Tableau than creating TOPN filters and drill downs and cluttering every page of my workbook. I did start off by doing this for EDA purposes, but quickly realised that it was too disjointed and uninspiring. Also I tried to load data from an entire ICB into MySQL and it struggled. So there's that.
