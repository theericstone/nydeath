*-------------------------------------------------------------------------*
 |             SPSS DATA DEFINITION STATEMENTS FOR ICPSR 3418             |
 |                NATIONAL PROSECUTORS SURVEY [CENSUS], 2001              |
 |                          FIRST ICPSR EDITION                           |
 |                              JULY, 2002                                |
 |                                                                        |
 | This SPSS setup file contains the following statements:                |
 |                                                                        |
 | DATA LIST:  Specifies the input data file to be read and assigns the   |
 | name, type, decimal specification (if any), and identifies variable    |
 | beginning and ending column locations. Users must replace              |
 | "file-specification" with a complete statement of the location of the  |
 | data file.                                                             |
 |                                                                        |
 | VARIABLE LABELS:  Assigns descriptive labels to variables. Variable    |
 | labels and variable names may be identical for certain variables.      |
 |                                                                        |
 | VALUE LABELS:  Assigns descriptive labels to codes in the data file.   |
 | Value labels may not be present for all variables in the data file.    |
 |                                                                        |
 | MISSING VALUES:  Declares user-defined missing values. These values    |
 | can be treated specially in data transformations, statistical          |
 | calculations, and case selection. Missing values may not be present    |
 | for all variables in the data file.                                    |
 |                                                                        |
 | MISSING VALUE RECODE:  Sets user-defined numeric missing values to     |
 | missing as interpreted by the SPSS system. Missing value recodes may   |
 | not be present for all variables in the data file.                     |
 |                                                                        |
 | NOTE:  Users should modify this SPSS setup to suit their specific      |
 | needs. MISSING VALUES and MISSING VALUE RECODE sections have been      |
 | marked by SPSS comment statements. To include these sections in a      |
 | final SPSS setup, users should remove the SPSS comment statements from |
 | the desired section(s).                                                |
 *------------------------------------------------------------------------.
                                                                           
* SPSS FILE HANDLE, DATA LIST COMMANDS.                                    
                                                                           
FILE HANDLE DATA / NAME="file-specification" LRECL=1045.                   
DATA LIST FILE=DATA /                                                      
   SU_ID 1-8                PHASE 9-9                A1 10-11              
   A2A 12-13                A2B 14-15                A3A 16-17             
   A4A 18-19                A3B 20-22                A4B 23-24             
   A3C 25-27                A4C 28-29                A3D 30-32             
   A4D 33-34                A3E 35-36                A4E 37-38             
   A3F 39-40                A4F 41-42                A3G 43-45             
   A4G 46-47                A3H 48-50                A4H 51-52             
   A3I 53-55                A4I 56-58                A3J 59-61             
   A4J 62-64                A3K 65-68                A4K 69-71             
   A5 72-77                 A6A 78-82                A7A 83-88             
   A6B 89-94                A7B 95-100               A6C 101-106           
   A7C 107-112              A8 113-114               A9 115-116            
   A10 117-118              A11 119-120              B1 121-129            
   B1BEGMO 130-131          B1BEGDA 132-133          B1BEGYR 134-137       
   B1ENDMO 138-139          B1ENDDA 140-141          B1ENDYR 142-145       
   B2A 146-147              B2B 148-149              B2C 150-151           
   B2D 152-153              B2E 154-155              B2F 156-157           
   B2G 158-159              B3A 160-166 (2)          B3B 167-173 (2)       
   B3C 174-179 (2)          B3D 180-185 (2)          B3E 186-192 (2)       
   C1A 193-194              C1B 195-196              C1C 197-198           
   C1D 199-200              C1E 201-202              C1F 203-204           
   C1G 205-206              C1H 207-208              C1I 209-210           
   C1J 211-212              C2 213-214               C3A 215-216           
   C3B 217-218              C3C 219-220              C3D 221-222           
   C3E 223-224              C3F 225-226              C3G 227-228           
   C3H 229-230              C3I 231-232              C3J 233-234           
   C3K 235-236              D1A 237-238              D1B 239-240           
   D1C 241-242              D1D 243-244              D1E 245-246           
   D1F 247-248              D1G 249-250              D1H 251-252           
   D2 253-254               D3A 255-258              D3B 259-263           
   D3C 264-268              D3D 269-274              D3E 275-279           
   D3F 280-283              E1 284-285               E1A 286-289           
   E2A 290-291              E2B 292-293              E2C 294-295           
   E3 296-297               F1 298-299               F2A 300-301           
   F3A 302-303              F4A 304-305              F2B 306-307           
   F3B 308-309              F4B 310-311              F2C 312-313           
   F3C 314-315              F4C 316-317              F2D 318-319           
   F3D 320-321              F4D 322-323              F2E 324-325           
   F3E 326-327              F4E 328-329              F5A 330-331           
   F5B 332-333              F5C 334-335              F5D 336-337           
   F5E 338-339              F5F 340-341              F5G 342-343           
   F6A 344-345              F6B 346-347              F6C 348-349           
   F6D 350-351              G1A 352-353              G1B 354-355           
   G1C 356-357              G2A 358-359              G2B 360-361           
   G2C 362-363              G2D 364-365              G3A 366-367           
   G3B 368-369              G3C 370-371              G3D 372-373           
   G3E 374-375              H1A 376-377              H1B 378-379           
   H1C 380-381              H2A 382-383              H2B 384-385           
   H2C 386-387              H2D 388-389              H3A 390-391           
   H3B 392-393              H3C 394-395              H3D 396-397           
   H3E 398-399              H3F 400-401              H3G 402-403           
   H3H 404-405              H4 406-407               H5 408-409            
   H6A 410-411              H6B 412-413              H6C 414-415           
   H6D 416-417              H7A 418-419              H7B 420-421           
   H7C 422-423              H7D 424-425              H7E 426-427           
   H7F 428-429              H8 430-431               RECMO 432-433         
   RECDA 434-435            RECYR 436-439            DOCUDISP 440-441      
   STATE 442-443 (A)        DISTNUM 444-447          DISTRICT 448-483 (A)  
   TOTPOP 484-490           COUNTY1 491-517 (A)      FIPS1 518-522         
   COUNTY2 523-542 (A)      FIPS2 543-547            COUNTY3 548-568 (A)   
   FIPS3 569-573            COUNTY4 574-588 (A)      FIPS4 589-593         
   COUNTY5 594-610 (A)      FIPS5 611-615            COUNTY6 616-646 (A)   
   FIPS6 647-651            COUNTY7 652-669 (A)      FIPS7 670-674         
   COUNTY8 675-684 (A)      FIPS8 685-689            COUNTY9 690-701 (A)   
   FIPS9 702-706            COUNTY10 707-721 (A)     FIPS10 722-726        
   COUNTY11 727-737 (A)     FIPS11 738-742           COUNTY12 743-756 (A)  
   FIPS12 757-761           COUNTY13 762-777 (A)     FIPS13 778-782        
   COUNTY14 783-793 (A)     FIPS14 794-798           COUNTY15 799-817 (A)  
   FIPS15 818-822           COUNTY16 823-834 (A)     FIPS16 835-839        
   COUNTY17 840-849 (A)     FIPS17 850-854           COUNTY18 855-869 (A)  
   FIPS18 870-874           COUNTY19 875-887 (A)     FIPS19 888-892        
   COUNTY20 893-909 (A)     FIPS20 910-914           COUNTY21 915-928 (A)  
   FIPS21 929-933           COUNTY22 934-940 (A)     FIPS22 941-945        
   COUNTY23 946-957 (A)     FIPS23 958-962           COUNTY24 963-982 (A)  
   FIPS24 983-987           COUNTY25 988-1006 (A)    FIPS25 1007-1010      
   COUNTY26 1011-1023 (A)   FIPS26 1024-1027         COUNTY27 1028-1041 (A)
   FIPS27 1042-1045.                                                       
                                                                           
* SPSS VARIABLE LABELS COMMAND.                                            
                                                                           
VARIABLE LABELS                                                            
   SU_ID "PRELOADED DISTRICT SU_ID"                                        
   PHASE "PHASE PROJECT PHASE"                                             
   A1 "OFFICE TERM CP"                                                     
   A2A "LENGTH OF SERVICE CP (YRS)"                                        
   A2B "LENGTH OF SERVICE CP (MOS)"                                        
   A3A "FT CHIEF PROSECUTOR"                                               
   A4A "PT CHIEF PROSECUTOR"                                               
   A3B "FT ASST PROSECUTOR"                                                
   A4B "PT ASST PROSECUTOR"                                                
   A3C "FT CIVIL ATTY"                                                     
   A4C "PT CIVIL ATTY"                                                     
   A3D "FT SUPERVISOR ATTY"                                                
   A4D "PT SUPERVISOR ATTY"                                                
   A3E "FT MANAGER ATTY"                                                   
   A4E "PT MANAGER ATTY"                                                   
   A3F "FT VICTIM ADV"                                                     
   A4F "PT VICTIM ADV"                                                     
   A3G "FT LEGAL SERVICES"                                                 
   A4G "PT LEGAL SERVICES"                                                 
   A3H "FT INVESTIGATORS"                                                  
   A4H "PT INVESTIGATORS"                                                  
   A3I "FT SUPPORT STAFF"                                                  
   A4I "PT SUPPORT STAFF"                                                  
   A3J "FT OTHER STAFF"                                                    
   A4J "PT OTHER STAFF"                                                    
   A3K "TOTAL FULL TIME STAFF"                                             
   A4K "TOTAL PART TIME STAFF"                                             
   A5 "ANNUAL SALARY CP"                                                   
   A6A "MIN SALARY ENTRY AP"                                               
   A7A "MAX SALARY ENTRY AP"                                               
   A6B "MIN SALARY AP W/5YRS EXP"                                          
   A7B "MAX SALARY AP W/5YRS EXP"                                          
   A6C "MIN SALARY SUPV ATTY"                                              
   A7C "MAX SALARY SUPV ATTY"                                              
   A8 "PROBLEMS RECRUITING STAFF"                                          
   A9 "PRIMARY OBSTACLE RECRUITING STAFF"                                  
   A10 "PROBLEMS RETAINING STAFF"                                          
   A11 "PRIMARY OBSTACLE RETAINING STAFF"                                  
   B1 "TOTAL BUDGET"                                                       
   B1BEGMO "BUDGET START MONTH"                                            
   B1BEGDA "BUDGET START DAY"                                              
   B1BEGYR "BUDGET START YEAR"                                             
   B1ENDMO "BUDGET END MONTH"                                              
   B1ENDDA "BUDGET END DAY"                                                
   B1ENDYR "BUDGET END YEAR"                                               
   B2A "INCLUDES STAFF SALARIES"                                           
   B2B "INCLUDES EXPERT SERVICES"                                          
   B2C "INCLUDES INVESTIGATOR SERVICES"                                    
   B2D "INCLUDES INTERPRETER SERVICES"                                     
   B2E "INCLUDES SOCIAL SERVICES"                                          
   B2F "INCLUDES CHILD SUP ENFORCE"                                        
   B2G "INCLUDES DNA TESTING"                                              
   B3A "BUDGET% FROM STATE"                                                
   B3B "BUDGET% FROM COUNTY"                                               
   B3C "BUDGET% FROM CITY GOVT"                                            
   B3D "BUDGET% FROM GRANTS"                                               
   B3E "BUDGET% FROM OTHER SOURCES"                                        
   C1A "PROSECUTED HATE CRIME"                                             
   C1B "PROSECUTED DOMESTIC VIOLENCE"                                      
   C1C "PROSECUTED ELDER ABUSE"                                            
   C1D "PROSECUTED STALKING"                                               
   C1E "PROSECUTED CHILD ABUSE"                                            
   C1F "PROSECUTED HEALTH FRAUD"                                           
   C1G "PROSECUTED BANK FRAUD"                                             
   C1H "PROSECUTED TELEMARKETING FRAUD"                                    
   C1I "PROSECUTED POSSESS ILLEGAL FIREARM"                                
   C1J "PROSECUTED EXCESS POLICE FORCE"                                    
   C2 "PROSECUTED COMPUTER CRIMES"                                         
   C3A "COMP: CREDIT CARD FRAUD"                                           
   C3B "COMP: BANK CARD FRAUD"                                             
   C3C "COMP: FORGERY"                                                     
   C3D "COMP: SABOTAGE"                                                    
   C3E "COMP: UNAUTH ACCESS"                                               
   C3F "COMP: SOFTWARE COPYRIGHT INFRNGMT"                                 
   C3G "COMP: CYBERSTALKING"                                               
   C3H "COMP: INTELLECTUAL PROPERTY THEFT"                                 
   C3I "COMP: TRANSMIT CHILD PORN"                                         
   C3J "COMP: IDENTITY THEFT"                                              
   C3K "COMP: OTHER COMPUTER CRIMES"                                       
   D1A "JURISDICTION MISDEMEANORS"                                         
   D1B "JURISDICTION MISDEM W/ FELONY"                                     
   D1C "JURISDICTION MISDEM APPEALS"                                       
   D1D "JURISDICTION FELONY APPEALS"                                       
   D1E "JURISDICTION TRAFFIC VIOLATIONS"                                   
   D1F "JURISDICTION JUVENILE MATTERS"                                     
   D1G "JURISDICTION CHILD SUP ENFORCE"                                    
   D1H "JURISDICTION CIVIL LAWSUITS"                                       
   D2 "CRIMINAL CASE COUNT METHOD"                                         
   D3A "TOTAL FELONY JURY VERDICTS"                                        
   D3B "TOTAL FELONY CASES CLOSED"                                         
   D3C "TOTAL FELONY CASES CONVICTED"                                      
   D3D "TOTAL MISDEM CASES CLOSED"                                         
   D3E "TOTAL MISDEM CASES CONVICTED"                                      
   D3F "TOTAL FEL/MISD CASES DISPOSED OF"                                  
   E1 "PROCEEDED AGAINST JUVENILES"                                        
   E1A "HOW MANY JUVENILE CASES"                                           
   E2A "SPECIAL UNIT FOR JUVENILES"                                        
   E2B "DESIGNATED ATTY FOR JUVENILES"                                     
   E2C "NO SPECIAL UNIT/ATTY FOR JUVENILES"                                
   E3 "WRITTEN GUIDELINES FOR JUVENILES"                                   
   F1 "WORK RELATED THREATS"                                               
   F2A "CP RECD THREATENING LETTER"                                        
   F3A "AP RECD THREATENING LETTER"                                        
   F4A "SI RECD THREATENING LETTER"                                        
   F2B "CP RECD THREATENING CALL"                                          
   F3B "AP RECD THREATENING CALL"                                          
   F4B "SI RECD THREATENING CALL"                                          
   F2C "CP RECD FACE-TO-FACE THREAT"                                       
   F3C "AP RECD FACE-TO-FACE THREAT"                                       
   F4C "SI RECD FACE-TO-FACE THREAT"                                       
   F2D "CP RECD BATTERY/ASSAULT"                                           
   F3D "AP RECD BATTERY/ASSAULT"                                           
   F4D "SI RECD BATTERY/ASSAULT"                                           
   F2E "CP RECD OTHER THREAT"                                              
   F3E "AP RECD OTHER THREAT"                                              
   F4E "SI RECD OTHER THREAT"                                              
   F5A "POLICE PROTECTION"                                                 
   F5B "BUILDING GUARDS"                                                   
   F5C "ELECTRONIC SURVEILLANCE"                                           
   F5D "METAL DETECTORS"                                                   
   F5E "ELECTRONIC SECURITY SYSTEM"                                        
   F5F "OTHER SECURITY MEASURES"                                           
   F5G "NO SECURITY MEASURES"                                              
   F6A "CP CARRIES FIREARM"                                                
   F6B "AP CARRIES FIREARM"                                                
   F6C "SI CARRIES FIREARM"                                                
   F6D "NO STAFF CARRIES FIREARM"                                          
   G1A "DNA USED IN PLEA NEGOTIATIONS"                                     
   G1B "DNA USED IN FELONY TRIALS"                                         
   G1C "NO DNA EVIDENCE USED"                                              
   G2A "FBI DID DNA ANALYSIS"                                              
   G2B "STATE LAB DID DNA ANALYSIS"                                        
   G2C "LOCAL AGENCY LAB DID DNA ANALYSIS"                                 
   G2D "PRIVATE LAB DID DNA ANALYSIS"                                      
   G3A "IMPROPER COLLECTION DNA EVIDENCE"                                  
   G3B "INCONCLUSIVE DNA RESULTS"                                          
   G3C "EXCESSIVE DELAY GETTING LAB RESULTS"                               
   G3D "DIFFICULTY GETTING RESULTS ADMITTED"                               
   G3E "NONE OF ABOVE PROBLEMS"                                            
   H1A "USED COMMUNITY TO ID CRIME/PROBLEMS"                               
   H1B "ASSIGNED PROSECUTORS TO GEOG AREAS"                                
   H1C "USED TOOLS OTHER THAN CRIMINAL PROS"                               
   H2A "RELATIONSHIP W/ LAW ENFORCE AGENCIES"                              
   H2B "RELATIONSHIP W/ OTHER GOVT AGENCY"                                 
   H2C "RELATIONSHIP W/ PRIVATE ORGANIZATION"                              
   H2D "RELATIONSHIP W/ COMMUNITY ASSOC"                                   
   H3A "MET W/ NEIGHBORHOOD ASSOCIATIONS"                                  
   H3B "MET W/ TENANTS ASSOCIATIONS"                                       
   H3C "MET W/ YOUTH SERVICES ASSOCIATIONS"                                
   H3D "MET W/ ADVOCACY GROUPS"                                            
   H3E "MET W/ BUSINESS GROUPS"                                            
   H3F "MET W/ RELIGIOUS GROUPS"                                           
   H3G "MET W/ SCHOOL GROUPS"                                              
   H3H "MET W/ OTHER GROUPS"                                               
   H4 "PROS ASSIGNED TO COMMUNITY ACTIVITY"                                
   H5 "PROS OUTSIDE CENTRAL OFFICE"                                        
   H6A "PROS IN POLICE DEPT"                                               
   H6B "PROS IN COMMUNITY BASED OFFICE"                                    
   H6C "PROS IN CITY/MUN ATTY OFFICE"                                      
   H6D "PROS IN OTHER LOCATION"                                            
   H7A "COMMUN PROS: VIOLENT CRIME"                                        
   H7B "COMMUN PROS: PROPERTY CRIME"                                       
   H7C "COMMUN PROS: DRUG CRIME"                                           
   H7D "COMMUN PROS: PUBLIC ORDER CRIME"                                   
   H7E "COMMUN PROS: JUVENILE CRIME"                                       
   H7F "COMMUN PROS: NUISANCE COMPLAINTS"                                  
   H8 "COMMUNITY PROSECUTORS CASELOAD"                                     
   RECMO "MONTH RECEIVED"                                                  
   RECDA "DAY RECEIVED"                                                    
   RECYR "YEAR RECEIVED"                                                   
   DOCUDISP "CMS DOCUMENT DISPOSITION"                                     
   STATE "STATE"                                                           
   DISTNUM "DISTNUM"                                                       
   DISTRICT "DISTRICT"                                                     
   TOTPOP "TOTPOP"                                                         
   COUNTY1 "COUNTY1"                                                       
   FIPS1 "FIPS1"                                                           
   COUNTY2 "COUNTY2"                                                       
   FIPS2 "FIPS2"                                                           
   COUNTY3 "COUNTY3"                                                       
   FIPS3 "FIPS3"                                                           
   COUNTY4 "COUNTY4"                                                       
   FIPS4 "FIPS4"                                                           
   COUNTY5 "COUNTY5"                                                       
   FIPS5 "FIPS5"                                                           
   COUNTY6 "COUNTY6"                                                       
   FIPS6 "FIPS6"                                                           
   COUNTY7 "COUNTY7"                                                       
   FIPS7 "FIPS7"                                                           
   COUNTY8 "COUNTY8"                                                       
   FIPS8 "FIPS8"                                                           
   COUNTY9 "COUNTY9"                                                       
   FIPS9 "FIPS9"                                                           
   COUNTY10 "COUNTY10"                                                     
   FIPS10 "FIPS10"                                                         
   COUNTY11 "COUNTY11"                                                     
   FIPS11 "FIPS11"                                                         
   COUNTY12 "COUNTY12"                                                     
   FIPS12 "FIPS12"                                                         
   COUNTY13 "COUNTY13"                                                     
   FIPS13 "FIPS13"                                                         
   COUNTY14 "COUNTY14"                                                     
   FIPS14 "FIPS14"                                                         
   COUNTY15 "COUNTY15"                                                     
   FIPS15 "FIPS15"                                                         
   COUNTY16 "COUNTY16"                                                     
   FIPS16 "FIPS16"                                                         
   COUNTY17 "COUNTY17"                                                     
   FIPS17 "FIPS17"                                                         
   COUNTY18 "COUNTY18"                                                     
   FIPS18 "FIPS18"                                                         
   COUNTY19 "COUNTY19"                                                     
   FIPS19 "FIPS19"                                                         
   COUNTY20 "COUNTY20"                                                     
   FIPS20 "FIPS20"                                                         
   COUNTY21 "COUNTY21"                                                     
   FIPS21 "FIPS21"                                                         
   COUNTY22 "COUNTY22"                                                     
   FIPS22 "FIPS22"                                                         
   COUNTY23 "COUNTY23"                                                     
   FIPS23 "FIPS23"                                                         
   COUNTY24 "COUNTY24"                                                     
   FIPS24 "FIPS24"                                                         
   COUNTY25 "COUNTY25"                                                     
   FIPS25 "FIPS25"                                                         
   COUNTY26 "COUNTY26"                                                     
   FIPS26 "FIPS26"                                                         
   COUNTY27 "COUNTY27"                                                     
   FIPS27 "FIPS27".                                                        
                                                                           
* SPSS VALUE LABELS COMMAND.                                               
                                                                           
VALUE LABELS                                                               
   SU_ID                                                                   
   99999999 "Missing" /                                                    
   PHASE                                                                   
   9 "Missing" /                                                           
   A1                                                                      
   99 "Missing" /                                                          
   A2A                                                                     
   99 "Missing" /                                                          
   A2B                                                                     
   99 "Missing" /                                                          
   A3A                                                                     
   9 "Missing" /                                                           
   A4A                                                                     
   9 "Missing" /                                                           
   A3B                                                                     
   999 "Missing" /                                                         
   A4B                                                                     
   99 "Missing" /                                                          
   A3C                                                                     
   999 "Missing" /                                                         
   A4C                                                                     
   99 "Missing" /                                                          
   A3D                                                                     
   999 "Missing" /                                                         
   A4D                                                                     
   9 "Missing" /                                                           
   A3E                                                                     
   99 "Missing" /                                                          
   A4E                                                                     
   9 "Missing" /                                                           
   A3F                                                                     
   99 "Missing" /                                                          
   A4F                                                                     
   9 "Missing" /                                                           
   A3G                                                                     
   999 "Missing" /                                                         
   A4G                                                                     
   99 "Missing" /                                                          
   A3H                                                                     
   999 "Missing" /                                                         
   A4H                                                                     
   99 "Missing" /                                                          
   A3I                                                                     
   999 "Missing" /                                                         
   A4I                                                                     
   999 "Missing" /                                                         
   A3J                                                                     
   999 "Missing" /                                                         
   A4J                                                                     
   999 "Missing" /                                                         
   A3K                                                                     
   9999 "Missing" /                                                        
   A4K                                                                     
   999 "Missing" /                                                         
   A5                                                                      
   999999 "Missing" /                                                      
   A6A                                                                     
   99999 "Missing" /                                                       
   A7A                                                                     
   999999 "Missing" /                                                      
   A6B                                                                     
   999999 "Missing" /                                                      
   A7B                                                                     
   999999 "Missing" /                                                      
   A6C                                                                     
   999999 "Missing" /                                                      
   A7C                                                                     
   999999 "Missing" /                                                      
   A8                                                                      
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   A9                                                                      
   1 "Salary"                                                              
   2 "Workload"                                                            
   3 "Prof Develpmt"                                                       
   4 "Benefits Pkg"                                                        
   5 "Adv Opportunity"                                                     
   6 "Nonsalary Incent"                                                    
   7 "Other"                                                               
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   A10                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   A11                                                                     
   1 "Salary"                                                              
   2 "Workload"                                                            
   3 "Staff Burnout"                                                       
   4 "Prof Develpmt"                                                       
   5 "Benefits Pkg"                                                        
   6 "Adv Opportunity"                                                     
   7 "Nonsalary Incent"                                                    
   8 "Other"                                                               
   9 "Missing"                                                             
   88 "Not Applicable" /                                                   
   B1                                                                      
   999999999 "Missing" /                                                   
   B1BEGMO                                                                 
   99 "Missing" /                                                          
   B1BEGDA                                                                 
   99 "Missing" /                                                          
   B1BEGYR                                                                 
   9999 "Missing" /                                                        
   B1ENDMO                                                                 
   99 "Missing" /                                                          
   B1ENDDA                                                                 
   99 "Missing" /                                                          
   B1ENDYR                                                                 
   9999 "Missing" /                                                        
   B2A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   B2B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   B2C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   B2D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   B2E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   B2F                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   B2G                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   B3A                                                                     
   999.99 "Missing" /                                                      
   B3B                                                                     
   999.99 "Missing" /                                                      
   B3C                                                                     
   99.99 "Missing" /                                                       
   B3D                                                                     
   99.99 "Missing" /                                                       
   B3E                                                                     
   999.99 "Missing" /                                                      
   C1A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1F                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1G                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1H                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1I                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C1J                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   C2                                                                      
   1 "Yes"                                                                 
   2 "No"                                                                  
   3 "No State Statute"                                                    
   9 "Missing" /                                                           
   C3A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3F                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3G                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3H                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3I                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3J                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   C3K                                                                     
                                                                           
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   D1A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D1B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D1C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D1D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D1E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D1F                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D1G                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D1H                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   D2                                                                      
   1 "Each Charge"                                                         
   2 "Serious Charge"                                                      
   3 "Each Defendent"                                                      
   4 "Each Incident"                                                       
   5 "Other"                                                               
   9 "Missing" /                                                           
   D3A                                                                     
   9999 "Missing" /                                                        
   D3B                                                                     
   99999 "Missing" /                                                       
   D3C                                                                     
   99999 "Missing" /                                                       
   D3D                                                                     
   888888 "Not Applicable"                                                 
   999999 "Missing" /                                                      
   D3E                                                                     
   88888 "Not Applicable"                                                  
   99999 "Missing" /                                                       
   D3F                                                                     
   9999 "Missing" /                                                        
   E1                                                                      
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   E1A                                                                     
   8888 "Not Applicable"                                                   
   9999 "Missing" /                                                        
   E2A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   E2B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   E2C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   E3                                                                      
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F1                                                                      
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F2A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F3A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F4A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F2B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F3B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F4B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F2C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F3C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F4C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F2D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F3D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F4D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F2E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F3E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F4E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   F5A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F5B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F5C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F5D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F5E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F5F                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F5G                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F6A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F6B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F6C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   F6D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   G1A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   G1B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   G1C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   G2A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G2B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G2C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G2D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G3A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G3B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G3C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G3D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   G3E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H1A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H1B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H1C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H2A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H2B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H2C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H2D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3F                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3G                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H3H                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H4                                                                      
   1 "Yes"                                                                 
   2 "No"                                                                  
   9 "Missing" /                                                           
   H5                                                                      
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H6A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H6B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H6C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H6D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H7A                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H7B                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H7C                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H7D                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H7E                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H7F                                                                     
   1 "Yes"                                                                 
   2 "No"                                                                  
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   H8                                                                      
   1 "Full Caseload"                                                       
   2 "Reduced load"                                                        
   3 "Full &  Reduced"                                                     
   4 "None"                                                                
   8 "Not Applicable"                                                      
   9 "Missing" /                                                           
   RECMO                                                                   
   99 "Missing" /                                                          
   RECDA                                                                   
   99 "Missing" /                                                          
   RECYR                                                                   
   9999 "Missing" /                                                        
   DOCUDISP                                                                
   0 "Nonresponse"                                                         
   20 "Completed"                                                          
   25 "Ineligible"                                                         
   30 "Refused"                                                            
   40 "Undelverable" /                                                     
   FIPS2                                                                   
   88888 "Not Applicable" /                                                
   FIPS3                                                                   
   88888 "Not Applicable" /                                                
   FIPS4                                                                   
   88888 "Not Applicable" /                                                
   FIPS5                                                                   
   88888 "Not Applicable" /                                                
   FIPS6                                                                   
   88888 "Not Applicable" /                                                
   FIPS7                                                                   
   88888 "Not Applicable" /                                                
   FIPS8                                                                   
   88888 "Not Applicable" /                                                
   FIPS9                                                                   
   88888 "Not Applicable" /                                                
   FIPS10                                                                  
   88888 "Not Applicable" /                                                
   FIPS11                                                                  
   88888 "Not Applicable" /                                                
   FIPS12                                                                  
   88888 "Not Applicable" /                                                
   FIPS13                                                                  
   88888 "Not Applicable" /                                                
   FIPS14                                                                  
   88888 "Not Applicable" /                                                
   FIPS15                                                                  
   88888 "Not Applicable" /                                                
   FIPS16                                                                  
   88888 "Not Applicable" /                                                
   FIPS17                                                                  
   88888 "Not Applicable" /                                                
   FIPS18                                                                  
   88888 "Not Applicable" /                                                
   FIPS19                                                                  
   88888 "Not Applicable" /                                                
   FIPS20                                                                  
   88888 "Not Applicable" /                                                
   FIPS21                                                                  
   88888 "Not Applicable" /                                                
   FIPS22                                                                  
   88888 "Not Applicable" /                                                
   FIPS23                                                                  
   88888 "Not Applicable" /                                                
   FIPS24                                                                  
   88888 "Not Applicable" /                                                
   FIPS25                                                                  
   8888 "Not Applicable" /                                                 
   FIPS26                                                                  
   8888 "Not Applicable" /                                                 
   FIPS27                                                                  
   8888 "Not Applicable" /.                                                
                                                                           
* SPSS MISSING VALUES COMMAND.                                             
                                                                           
* MISSING VALUES                                                           
   SU_ID (99999999)                    PHASE (9)                           
   A1 (99)                             A2A (99)                            
   A2B (99)                            A3A (9)                             
   A4A (9)                             A3B (999)                           
   A4B (99)                            A3C (999)                           
   A4C (99)                            A3D (999)                           
   A4D (9)                             A3E (99)                            
   A4E (9)                             A3F (99)                            
   A4F (9)                             A3G (999)                           
   A4G (99)                            A3H (999)                           
   A4H (99)                            A3I (999)                           
   A4I (999)                           A3J (999)                           
   A4J (999)                           A3K (9999)                          
   A4K (999)                           A5 (999999)                         
   A6A (99999)                         A7A (999999)                        
   A6B (999999)                        A7B (999999)                        
   A6C (999999)                        A7C (999999)                        
   A8 (9)                              A9 (8, 9)                           
   A10 (9)                             A11 (88, 9)                         
   B1 (999999999)                      B1BEGMO (99)                        
   B1BEGDA (99)                        B1BEGYR (9999)                      
   B1ENDMO (99)                        B1ENDDA (99)                        
   B1ENDYR (9999)                      B2A (9)                             
   B2B (9)                             B2C (9)                             
   B2D (9)                             B2E (9)                             
   B2F (9)                             B2G (9)                             
   B3A (999.99)                        B3B (999.99)                        
   B3C (99.99)                         B3D (99.99)                         
   B3E (999.99)                        C1A (9)                             
   C1B (9)                             C1C (9)                             
   C1D (9)                             C1E (9)                             
   C1F (9)                             C1G (9)                             
   C1H (9)                             C1I (9)                             
   C1J (9)                             C2 (9)                              
   C3A (8, 9)                          C3B (8, 9)                          
   C3C (8, 9)                          C3D (8, 9)                          
   C3E (8, 9)                          C3F (8, 9)                          
   C3G (8, 9)                          C3H (8, 9)                          
   C3I (8, 9)                          C3J (8, 9)                          
   C3K (8, 9)                          D1A (9)                             
   D1B (9)                             D1C (9)                             
   D1D (9)                             D1E (9)                             
   D1F (9)                             D1G (9)                             
   D1H (9)                             D2 (9)                              
   D3A (9999)                          D3B (99999)                         
   D3C (99999)                         D3D (888888, 999999)                
   D3E (88888, 99999)                  D3F (9999)                          
   E1 (9)                              E1A (8888, 9999)                    
   E2A (9)                             E2B (9)                             
   E2C (9)                             E3 (9)                              
   F1 (9)                              F2A (8, 9)                          
   F3A (8, 9)                          F4A (8, 9)                          
   F2B (8, 9)                          F3B (8, 9)                          
   F4B (8, 9)                          F2C (8, 9)                          
   F3C (8, 9)                          F4C (8, 9)                          
   F2D (8, 9)                          F3D (8, 9)                          
   F4D (8, 9)                          F2E (8, 9)                          
   F3E (8, 9)                          F4E (8, 9)                          
   F5A (9)                             F5B (9)                             
   F5C (9)                             F5D (9)                             
   F5E (9)                             F5F (9)                             
   F5G (9)                             F6A (9)                             
   F6B (9)                             F6C (9)                             
   F6D (9)                             G1A (9)                             
   G1B (9)                             G1C (9)                             
   G2A (8, 9)                          G2B (8, 9)                          
   G2C (8, 9)                          G2D (8, 9)                          
   G3A (8, 9)                          G3B (8, 9)                          
   G3C (8, 9)                          G3D (8, 9)                          
   G3E (8, 9)                          H1A (9)                             
   H1B (9)                             H1C (9)                             
   H2A (9)                             H2B (9)                             
   H2C (9)                             H2D (9)                             
   H3A (9)                             H3B (9)                             
   H3C (9)                             H3D (9)                             
   H3E (9)                             H3F (9)                             
   H3G (9)                             H3H (9)                             
   H4 (9)                              H5 (8, 9)                           
   H6A (8, 9)                          H6B (8, 9)                          
   H6C (8, 9)                          H6D (8, 9)                          
   H7A (8, 9)                          H7B (8, 9)                          
   H7C (8, 9)                          H7D (8, 9)                          
   H7E (8, 9)                          H7F (8, 9)                          
   H8 (8, 9)                           RECMO (99)                          
   RECDA (99)                          RECYR (9999)                        
   FIPS1 (88888)                       FIPS2 (88888)                       
   FIPS3 (88888)                       FIPS4 (88888)                       
   FIPS5 (88888)                       FIPS6 (88888)                       
   FIPS7 (88888)                       FIPS8 (88888)                       
   FIPS9 (88888)                       FIPS10 (88888)                      
   FIPS11 (88888)                      FIPS12 (88888)                      
   FIPS13 (88888)                      FIPS14 (88888)                      
   FIPS15 (88888)                      FIPS16 (88888)                      
   FIPS17 (88888)                      FIPS18 (88888)                      
   FIPS19 (88888)                      FIPS20 (88888)                      
   FIPS21 (88888)                      FIPS22 (88888)                      
   FIPS23 (88888)                      FIPS24 (88888)                      
   FIPS25 (8888)                       FIPS26 (8888)                       
   FIPS27 (8888).                                                          
                                                                           
