# CCRB Jurisdiction Complaints Records

## Project Description:
* Name: Data Incubator Challenge
* Organizer: The Data Incubator, Washington DC
* Time: Jul. 2018
* Participant: Xuan Yang
* References: Prof. Shivraj Kanungo, Prof. Philip W. Wirtz
* Dataset: [ccrb_datatransparencyinitiative_20170207.xlsx](ccrb_datatransparencyinitiative_20170207.xlsx)
* Object: To explore data from the NYC Data Transparnecy Initiative. They maintain a database of complaints that fall within the Civilian Complain Review Board (CCRB), an independent municiple agency. Your objective is to identify interesting patterns and trends within the data that may be indicative of large scale trends.
* Scripts: [Script.R](Script.R)

## Instruction:
The dataset contains data on all CCRB jurisdiction complaints closed in or after 2006. Some data in the Data Transparency Initiative reports on complaints received.

* Varaible Description:

| **Variable** | **Description** | **Type** |
| --- | --- | --- |
| DateStamp | the date the file was created. | POSIXct |
| UniqueComplaintId | a randomly assigned number used to uniquely identify distinct complaints. A single UniqueComplaintId may have multiple associated allegations. | num |
| Close Year | the year the complaint was closed by the CCRB. | num |
| CCRB Received Year | the year the complaint was received by the CCRB. | num |
| Borough of Occurrence | the borough in which the incident occurred. | char |
| Is Full Investigation | a logical marker indicating whether the complaint was fully investigated by the CCRB. | logical |
| Complaint Has Video Evidence | a logical marker indicating whether the CCRB has collected any video associated with the complaint. | logical |
| Complaint Filed Mode | how the complaint was filed. | char |
| Complaint Filed Place | where the complaint was filed. | char |
| Complaint Contains Stop & Frisk Allegations | a logical marker indicating whether the complaint contains an allegation of stop, question, search of person or frisk. | logical |
| Incident Location | a general description of the incident location. | char |
| Incident Year | the year of the incident which led to the complaint. | num |
| Encounter Outcome | the outcome of the encounter. | char |
| Reason For Initial Contact | the reason for initial contact. | char |
| Allegation FADO Type | the FADO type of the allegation (Force; Abuse of Authority; Discourtesy; Offensive Language). | char |
| Allegation Description | the description of the allegation. | char |

## Procedures:
* Processed and explored data on all complaints allegation records since 2006; 
* Performed project by using corresponding packages and advanced R command lines; 
* Imported excel files into R using packages “readxl” and renamed columns by COLNAMES function; 
* Identified unique record by using UNIQUE and LENGTH function; 
* Removed duplicate records by !DUPLICATE, NROW function and conditional statements; 
* Calculated the proportion of character variable by TABLE and SORT function; 
* Created new column for calculating difference between two numeric variables; 
* Transformed data framework type between table and data frame by DATA.FRAME and SETDT; 
* Built linear regression model between multiple variables by LM and SUMMARY function; 
* Calculated the chi-square test statistic between character variables by CHISQ.TEST.
