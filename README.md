# Project-3---Data-Engineering-and-Visualization
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

We hope to have presented our information in a logical, navigable format that is easy to transition from one element to another.  Our repository, in sequential order, consists of the code we implemented for the synthesis of the preliminary, intermediary, and culmination of our database design and necessary files for import, the totality of the information needed for the creation of our SQL tables and entity relationship diagram, which we have presented in multiple forms, the final output of the data required to construct the leaflet heatmap, and the essential files, such as the logic.js and index.html files that are compulsory for the actual creation of the map in Java Script. The best way to tangibly access the heatmap would be via the link in the About section of the submitted repository. Finally, we will include the necessary pathway to access our Google Slides presentation that we have presented, in class, as the final component of the project. 



## Tools
### 1. Jupyter notebook
### 2. PostgreSQL

## Key Steps

### 1. ETL

First, we downloaded the original data from the source, and in the first step, we performed data deduplication, reviewed the data information, and checked the results after deduplication. Second, we made adjustments to data formats that did not meet the requirements, such as removing decimal points from postal codes, correcting the case of column names, and removing spaces. Finally, following database table creation principles, we split the original data into four tables, deduplicated the extracted data, and made adjustments to formats and naming conventions to ensure that no errors occur when importing the data.

### 2. Database Design

Firstly, we used QuickDBD to create the ERD text and relationship diagram. Then, we created the database table schema in PostgreSQL. In the schema, we defined the primary and foreign keys for each table and specified the format and length of each field. Finally, we wrote query statements for each table.

### 3. Data Analysis and Visualization

Based on the data after the ETL process, we performed some data analysis and visualization. For example, we analyzed the top-ranking cities in terms of sales, and based on geographic coordinates and sales data, we created a heatmap using Leaflet.

## Ethical considerations

After recently being introduced to the ethical side of data, and some examples of where people's personal information may have been distributed inappropriately, we did not want to bridge to a point where we may have been reappropriating information unethically. Our data set does not contain information that we consider too personal or approaching a point where our project could be regarded as unethical. The information characterized in the dataset does not reach a level where a third party could derive any personal information, as the information leading down that path remains inaccessible. The Order ID and Fulfillment columns could potentially be the sources, ethically, where some information could potentially be released without the direct consent of either the individual ordering the item or the merchant who sells the item. Amazon, the company that releases the data, decided to remove all the direct characteristics that could be used detrimentally toward any person who shops on the website. All the other information left represented in the dataset does not give anyone the ability to discern a person’s identity or place of residence. If Amazon were to have not removed the information from the public data any company or anyone could use the included material to potentially harm a person, manufacturer, or wholesaler.  We think that this practice is critically necessary in our modern society where innocent people are abused through data leaks frequently at no fault of their own. Keeping important information private should be paramount for small and large corporations as technological knowledge is at an all-time high. We feel like we have not tangibly entered a place where there is any potential malice of any kind for anyone. 


## References for the data
Our original data from:
https://www.kaggle.com/datasets/thedevastator/unlock-profits-with-e-commerce-sales-data

Screenshot of data source:
![image](https://github.com/user-attachments/assets/f6426645-f217-41f4-8e24-1bde3677717c)

## References for codes
