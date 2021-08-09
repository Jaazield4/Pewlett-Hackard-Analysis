# Pewlett-Hackard-Analysis

## Overview
Used information about employees and departments from Pewlett-Hackard to determine which employees are eligible to retire and their title. Using
the Distinct On statement to get back only the newest titles that retirement eligible employees currently hold. Then from the unique_titles tables
created we took each title and used the count function on each. This provided the total number of each position of people who are eligible for retiring.
In deliverable 2 we created a table to find which employees are eligible to be mentors by deciding which employees are still working there and their title
by pulling data from the employees, department employee, and titles tables. 

### Purpose
The purpose of this analysis was to see how many people in each department were going to need replacing soon and who can be mentors for certain positions. 
By conducting this analysis we got practice pulling and putting information into databases and got experience using different functions to get the exact data
needed.

## Results
- There will be a high need to hire senior engineers for Pewlett-Hackard as there are 29,415 employees elible to retire soon who currently hold that title. 

![image](https://user-images.githubusercontent.com/85451089/128648559-d2711fbb-b670-494a-9f23-c955ce495a2e.png)

- Using the unique_titles table it is quick to see the people who will likely be retiring soon along with their position. Using the unique_titles you are
able to see the full information of the people who will likely be retiring soon. 

![image](https://user-images.githubusercontent.com/85451089/128648643-0b6fd57e-e2e1-4031-83eb-f1e8786bf372.png)

- In the mentorship_eligibility table created we can see that there are many people who are able to mentor new hires in several departments. When running the
table we see that many of their are many people with the title 'staff'. Because they're eligible to mentor new hires at this stage in their career it is more
reasonable to see them classified as 'senior staff'. They will after all be replacing those senior staff who will be retiring soon.

![image](https://user-images.githubusercontent.com/85451089/128648723-6a642c7f-36c0-41f8-b991-9f7414c4fe27.png)

- Next to senior engineers there are a large number of senior staff also getting ready to retire meaning that many of the engineers and staff members will be 
moved up to senior engineers and staff leaving the door open for them to start mentoring new hires. On the other hand there are only 2 managers who are eligible 
to retire soon. Meaning there won't be much change in leadership style for the majority of the departments.

## Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  There will be a need to fill 90,398 positions in the next few upcoming years to deal with the "silver tsunami". Out of all those positions about 64% comes from 
  senior engineers and senior staff alone. 
  
![image](https://user-images.githubusercontent.com/85451089/128649037-455ff107-823b-4928-a4a7-4cc2a0628ee8.png)

  As shown in the image above to retrieve this data we created a new table and used the count function on the title column from the unique_titles table to find
  out how many employees will be part of the "silver tsunami".

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard?
  It does not appear like there are many available mentor eligible clients to mentor the next generation of Pewlett Hackard. The dataset received from the 
  mentorship_eligibility table is small. 

#### Additional tables to provide more insight into the upcoming "silver tsunami"

![image](https://user-images.githubusercontent.com/85451089/128649167-0451bd5d-91ea-4d7d-a5d6-1b0f8c2891bc.png)

- By using a count function on the titles (similar way we used the count function on title for the unique_titles table) we are able to see that there are only 
399 mentor eligible senior engineers to mentor a needed 29,415 that might are retiring within the next few years. In total there are a total of 1549 
eligible mentors while there will be a need for over 90000 new hires.
  
