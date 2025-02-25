# Global Layoffs During COVID-19

### Project Overview
This project aims to analyze the impact of the COVID-19 pandemic on global layoffs by examining trends across industries, companies, locations, and time periods. The goal is to uncover patterns, identify the most affected sectors, and assess financial resilience by comparing layoffs with total funds raised. The insights derived can help businesses, policymakers, and job seekers make informed decisions for economic recovery and workforce planning.
### Table of Content
- [Project Overview](#project-overview)
- [Data Cleaning](#data-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Insights](#insights)
- [Recommendations](#recommendations)
- [Limitations](#limitations)
- [References](#references)

### Data Sources
Layoffs Data:The primary source of this data is 'Alex the Analyst' layoffs data on his github page.

### Tools Used
- SQL
  - Data Cleaning
  - Exploratory Data Analysis
- Power BI
  - Data Visualization

 ### Data Cleaning
 - Creating a database and loading data
 - Remove Duplicates
 - Standardize the Data
 - Null values or blank values
 - Remove unnecessary columns 

 ### Exploratory Data Analysis
 EDA involved exploring the data to answer key questions such as:

 - Which top 5 companies had the highest number of layoffs in each year?

   ![image](https://github.com/user-attachments/assets/c36fba1c-8c13-4b2d-879c-49699d273ae8)

 - What was the total layoffs per year?

   ![image](https://github.com/user-attachments/assets/fe49a743-7b08-41bb-997c-3570d725a35d)

 - Which industries were mostly affected?
  ![image](https://github.com/user-attachments/assets/9168a34c-b234-44ca-b4df-f53c2bad596e)

 - Which countries and locations had the most layoffs?

### Insights
#### 1.Layoff Trends Over Time:
- The highest number of layoffs occurred in 2022 (160,661), followed by 2023 (125,677) and 2020 (80,998).
- The year 2021 had the lowest layoffs (15,823), indicating a temporary recovery before another surge in 2022.
#### 2.Industries Most Affected:
- Consumer, Retail, and Transportation sectors experienced the highest layoffs.
- Finance, Food, and Real Estate were also among the industries with significant job cuts.
- Crypto, Healthcare, and Sales also witnessed layoffs, although at a slightly lower scale.
#### 3.Companies with the Highest Layoffs:
- Amazon, Google, Meta, Microsoft, and Salesforce were the top five companies with the most layoffs.
- Amazon led in 2022 and was among the top in 2023, showing a pattern of workforce reduction.
- Other notable layoffs occurred in companies like Uber, Cisco, and Dell.
#### 4.Geographical Impact:
- The United States had the highest layoffs compared to other countries, with India coming in second.
- The San Francisco Bay Area was the most affected region (109K layoffs), followed by Seattle and New York City.
- This suggests that tech hubs and major metropolitan areas were hit the hardest.
#### 5.Monthly Layoff Trends:
- Layoffs peaked in January and December, suggesting end-of-year and start-of-year restructuring.
- A mid-year dip followed by an upward trend in September to December could indicate budget adjustments in Q4.
#### 6.Layoffs vs. Financial Resilience (Total Funds Raised):
- Despite raising $898K(millions) in total funds, companies continued to lay off employees.
- This suggests that layoffs were not just a result of financial struggles but also strategic cost-cutting measures.
- Some industries and companies raised significant capital but still reduced workforce due to automation, restructuring, or shifting priorities.

### Recommendations:
##### 1.For Businesses:
- Diversify revenue streams to reduce dependency on volatile markets like tech and retail.
- Invest in workforce reskilling programs to retain employees by adapting them to new roles instead of layoffs.
- Strategic hiring and workforce planning should be aligned with economic cycles to avoid excessive job cuts.
##### 2.For Policymakers:
- Strengthen unemployment support and job retraining programs in affected regions like the SF Bay Area and Seattle.
- Encourage financial incentives for businesses to retain employees during economic downturns.
- Monitor industries prone to mass layoffs and provide early intervention strategies.
##### 3.For Job Seekers:
- Focus on industries with lower layoff risks such as healthcare, renewable energy, and AI-driven fields.
- Build skills in automation-proof jobs (AI, cybersecurity, cloud computing, etc.).
- Consider geographic flexibility—tech hubs may be riskier for job stability.

### Limitations
Some of the columns had empty values and therefore, I had to delete them.
### References
1.[Alex the Analyst](https://youtu.be/4UltKCnnnTA?si=onixvWTPn_aVVC3k)
