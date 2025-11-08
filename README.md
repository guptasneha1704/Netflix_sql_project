
🎬 Netflix Data Analysis using SQL (PostgreSQL)
📘 Project Overview

This project focuses on analyzing Netflix’s movies and TV shows dataset using PostgreSQL and pgAdmin.
The dataset is sourced from Kaggle’s Netflix Shows Dataset
 and contains information about movies, TV shows, cast, directors, release year, duration, and more.

The main goal of this project is to derive business insights from the data using SQL queries, focusing on trends, content distribution, and patterns.

🧠 Objectives

The key objectives of this project are:

To explore Netflix’s global content library.

To analyze trends in movie vs. TV show production.

To identify top-performing genres, directors, and countries.

To perform time-based analysis (e.g., last 5 or 10 years).

To apply text-based filtering and categorization on content descriptions.

🛠️ Tools & Technologies Used

Database: PostgreSQL

Interface: pgAdmin 4

Dataset: Netflix Movies and TV Shows Dataset (Kaggle)

Language: SQL

📊 Dataset Information
Column Name	Description
show_id	Unique ID for every show/movie
type	Indicates whether it’s a Movie or TV Show
title	Name of the Movie/TV Show
director	Director(s) of the show
cast	Actors involved
country	Country of origin
date_added	Date when added to Netflix
release_year	Year of release
rating	Audience rating (e.g., PG, R, TV-MA)
duration	Duration (minutes or seasons)
listed_in	Genre/category
description	Short summary of the content
🧩 SQL Business Problems & Solutions
1. Count the number of Movies vs TV Shows
2. Find the most common rating for Movies and TV Shows
3. List all Movies released in a specific year (e.g., 2020)
4. Find the top 5 countries with the most content on Netflix
5. Identify the longest Movie or TV Show by duration
6. Find content added in the last 5 years
7. Find all Movies/TV Shows by director 'Rajiv Chilaka'
8. List all TV Shows with more than 5 seasons
9. Count the number of content items in each genre
10. Find the average release year for content produced in a specific country
11. List all Movies that are documentaries
12. Find all content without a director
13. Find how many Movies actor 'Salman Khan' appeared in the last 10 years
14. Find the top 10 actors who have appeared in the highest number of Movies produced in India
15. Categorize content based on presence of the keywords ‘kill’ and ‘violence’ in the description

  - Label such content as ‘Bad’
  - Label all other content as ‘Good’
  - Count how many items fall into each category

📈 Key Insights

Movies dominate Netflix’s catalog compared to TV shows.

Certain countries (like the US and India) have produced the most Netflix content.

Recent years show a rise in content labeled as documentaries.

The majority of Netflix content is suitable for a general audience (ratings like TV-MA, PG-13).

Text analysis revealed that only a small portion of shows have violent or negative descriptions.

💡 Learning Outcomes

Hands-on practice with PostgreSQL and complex SQL queries.

Usage of aggregate functions, string functions, date/time functions, and CASE statements.

Improved understanding of data cleaning and categorization using SQL.

Gained insights into Netflix’s global content trends.

🚀 How to Run the Project

Download the dataset from Kaggle.

Create a new database in PostgreSQL and import the dataset.

Open pgAdmin and execute the SQL queries listed above.

Analyze the results for insights.

📁 Project Structure
📂 Netflix_SQL_Project

│── 📄 netflix_titles.csv

│── 📄 solution.sql

│── 📄 README.md

👩‍💻 Author

Snehaa Gupta

🎓 B.Tech CSE(DS) Student | Data Analyst & SQL Enthusiast

💼 Interested in Data Analytics, SQL, and Business Insights
