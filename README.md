# 🎨 SQL Server - Color Database Analysis

This project involves analyzing a color dataset using SQL Server. The goal is to practice basic to advanced SQL concepts by applying queries on a structured dataset.

## 📁 Dataset

The data is stored in a table called `colors`. The structure of the table is as follows:

| Column     | Description                         |
|------------|-------------------------------------|
| id         | Unique identifier for the color     |
| name       | Name of the color                   |
| rgb        | RGB hex code of the color           |
| is_trans   | Indicates if the color is transparent (`'t'` or `'f'`) |

## 🧠 SQL Topics Covered

This project includes a variety of SQL techniques:

- `SELECT`, `WHERE`, `ORDER BY`
- `LIKE`, `PATINDEX`
- `GROUP BY`, `COUNT()`, `TOP`
- `ROW_NUMBER()` window function
- `CTE` (Common Table Expressions)
- `CASE` statements for custom grouping

## ✅ Sample Questions Solved

1. List all colors alphabetically.
2. Count how many colors are marked as transparent (`is_trans = 't'`).
3. Retrieve the color with RGB value `'FFFFFF'`.
4. How many colors contain the word “Blue” in their name?
5. List color names with a negative `id` value.
6. Show how many colors exist for each `is_trans` value.
7. Find the top 3 most frequent RGB values.
8. List all colors where the RGB value starts with `'FF'`.
9. Get all color names and RGBs that contain the word “Bright”.
10. Retrieve all colors whose names include both “Dark” and “Blue”.
11. Categorize colors using `CASE`: Basic, Transparent, Metallic, Glow, Glitter, Speckle, Pearl, Chrome, or Other.
12. Count how many colors are in each custom category.
13. Use a CTE to assign `ROW_NUMBER()` to transparent colors and retrieve the top 10.
14. List colors containing “Green” in the name but whose RGB values contain only valid hex characters (no special characters).

## 💡 Purpose

This project demonstrates SQL querying skills, especially with real-world-like datasets. It's a strong portfolio piece for aspiring data analysts or backend developers working with relational databases.

## 🚀 Tech Stack

- SQL Server (tested on SQL Server Express)
- Management tools: SSMS or Azure Data Studio
- Sample CSV import for the colors table

## 📎 Notes

- All queries were tested and validated using SQL Server syntax.
- The dataset used is publicly available and can be modified or extended for further analysis.

## 🧾 License

This project is open-source and free to use for learning and portfolio purposes.
