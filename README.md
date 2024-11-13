# Project-3---Data-Engineering-and-Visualization
## PowerPoint Presentation
[Data Engineering and Visualization PowerPoint](https://docs.google.com/presentation/d/1F5YpvIXZ1ZmhQEEUBNxYIyKEwvGo52yI001LStdzNCs/edit?usp=sharing)
## Leaflet Hyperlink
[Amazon Orders Heat Map](https://nkortega21.github.io/Project-3---Data-Engineering-and-Visualization/)
## Table of Contents
- [Overview and Purpose](#Overview-and-Purpose)
- [Introduction](#Introduction)
- [Tools](#Tools)
- [Key Steps](#key-steps)
- [Ethical Considerations](#Ethical-Considerations)
- [References for the Data](#References-for-the-Data)
- [References for Codes](#References-for-Codes)

## Overview and purpose

As a group, we decided to pursue the data engineering method to complete this project. We felt more confident in our abilities to complete and thrive in each aspect of the data engineering pathway, while collectively deciding practicing and reviewing the ETL process was more applicable and realistic for the preliminary and introductory durations of a career as a data analyst or engineer. We wanted to strengthen our capabilities in executing the multitude of processes required to extract, transform, and load numerous different forms of data into more readable and explanatory systems. 

As we were looking for a dataset capable of fulfilling all the external requirements from the project rubric, and our own internal requirements, we were able to find a suitable dataset on Kaggle that outlined Amazon transactional data from April through June of 2022 broken down from each state of India. Our purpose was to take the initial CSV file and manipulate it into more descriptive, beneficial, and concise tables to be able to upload into SQL for future queries and the conception of an entity relationship diagram. We incorporated a JSON API into our Jupyter Notebook outlining data with which we feel adds to the analytical foundations of the project. We decided to create, mainly for our benefit, a heatmap using our foundational knowledge in Java and the Leaflet library and the data from our imported API, outlining the relative size of each distinct state in India based on the number of orders detailed during the timeframe in our dataset. In addition, we have included some predictive analysis using the StatsModel library that, with some notable limitations, we hope can predict the trend of sales in the forthcoming months, along with the relational parameters between the different states within the country. 

We hope to have presented our information, including the Jupyter Notebook, outputted CSV files, SQL schema, and Leaflet web app in a way that conveys and presents the analysis directly. We aim to attain each one of the parameters described in the project including the database design, data and delivery, and this GitHub Read Me to the presented standards. 



## Introduction

As for our project, we have decided to present a diverse portfolio via our shared GitHub repository for the submission of this project. Included in the portfolio are all of the necessary files and resources we deemed necessary to satisfy and hopefully reach all of the requirements outlined in the project rubric. 

Our main objective was to articulate responses for the defined parameters of the project, specifically the data engineering route. We have found a suitable, interesting dataset and have manipulated the raw dataset into smaller, informative tables, or data frames, that we have uploaded into SQL, by developing a schema outlining each column, primary, and foreign key necessary for future manipulation using basic and advanced SQL queries. We have acquired access to a Google API which we have incorporated into our project by implementing the acquired data into our database design portion by reading the API, creating a new data frame, and using the data to create an advanced heatmap correlating the relative size of each marker relative to the number of transactions, per state, over the duration covered in the data set. 

We hope to have presented our information in a logical, navigable format that is easy to transition from one element to another.  Our repository, in sequential order, consists of the code we implemented for the synthesis of the preliminary, intermediary, and culmination of our database design and necessary files for import, the totality of the information needed for the creation of our SQL tables and entity relationship diagram, which we have presented in multiple forms, the Jupyter Notebook files in which we used a python library that we were not taught in class, the final output of the data required to construct the leaflet heatmap, and the essential files, such as the logic.js and index.html files that are compulsory for the actual creation of the map in Java Script. The best way to tangibly access the heatmap would be via the link in the About section of the submitted repository. Finally, we will include the necessary pathway to access our Google Slides presentation that we have presented, in class, as the final component of the project. 



## Tools
### 1. Jupyter notebook
  Using Jupyter Notebook as our main source for the entirety of the ETL process as we uploaded, manipulated, and exported the data into CSV files for upload into SQL. We used a plethora of basic and complex functions built into Pandas, NumPy, MatPlotLib and StatsModels libraries. We conducted a multitude of queries and, we think, ultimately achieved our goal of presenting a thought-out, analytical project that meets the requirements. 
### 2. PostgreSQL
  Using our known version of SQL, we created a schema, uploaded the CSV files we created within our Jupyter Notebook, and formulated a database consisting of four tables that can be later worked to analyze any mathematical or non-numerical question that arises. 
### 3. VS Code
  Using VS Code to create an HTML index, and JavaScript logic file that runs our heatmap outlining some components of our data. We were able to accomplish our end goal and hope that our heatmap is a useful systematic tool that helps the person to visualize the distribution of purchases for each distinct state within India. 

## Key Steps

### 1. ETL

First, we downloaded the original data from the source, and in the first step, we performed data deduplication, reviewed the data information, and checked the results after deduplication. Second, we made adjustments to data formats that did not meet the requirements, such as removing decimal points from postal codes, correcting the case of column names, and removing spaces. Finally, following database table creation principles, we split the original data into four tables, deduplicated the extracted data, and made adjustments to formats and naming conventions to ensure that no errors occur when importing the data.

### 2. Database Design

Firstly, we used QuickDBD to create the ERD text and relationship diagram. Then, we created the database table schema in PostgreSQL. In the schema, we defined the primary and foreign keys for each table and specified the format and length of each field. Finally, we wrote query statements for each table.

### 3. Data Analysis and Visualization

Based on the data after the ETL process, we performed some data analysis and visualization. For example, we analyzed the top-ranking cities in terms of sales, and based on geographic coordinates and sales data, we created a heatmap using Leaflet.

## Ethical Considerations in Data Usage

Recently, I've become more aware of the ethical considerations surrounding data usage, especially regarding the inappropriate sharing of personal information. It’s crucial to avoid situations where we might unintentionally reappropriate data unethically.

In our project, we ensured that our dataset does not contain sensitive personal information that could be considered unethical to use. The data we have is structured in a way that prevents third parties from deriving any personal details, as the crucial identifying information is not accessible.

While the Order ID and Fulfillment columns could theoretically pose ethical concerns, we recognize that Amazon, the data provider, has taken steps to remove any direct identifiers that could harm individuals shopping on their platform. The remaining data does not allow anyone to discern a person’s identity or location.

If Amazon had not removed this sensitive information, it could have been misused by companies or individuals, potentially harming customers, manufacturers, or wholesalers. We believe it is vital to protect personal information, especially in today's world, where data breaches happen frequently and often without fault to the individuals affected.

It’s essential for both small and large corporations to prioritize data privacy, especially as technological capabilities continue to grow. We feel confident that our project has not crossed any ethical boundaries and poses no risk to anyone involved.


## References for the data
Our original data from:
[E-Commerce Sales Dataset](https://www.kaggle.com/datasets/thedevastator/unlock-profits-with-e-commerce-sales-data)

Screenshot of data source:
![image](https://github.com/user-attachments/assets/f6426645-f217-41f4-8e24-1bde3677717c)

## References for codes

We accessed some outides sources, such as CHAT GPT and previous lessons or homework modules, to aid in the completion of some parts of the code such as the Stats Model Library and the Leaflet heatmap portions. We acknowledge the changing and developing world of Data Analytics, along with academic and professional honesty and feel we have presented a project unique and distinctly our own.  
