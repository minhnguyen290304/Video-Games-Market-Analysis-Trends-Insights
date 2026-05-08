# Video-Games-Market-Analysis-Trends-Insights


# Video Games Market Insights & Trends Analysis

## 🎮 Project Overview
This project provides a comprehensive analysis of the global video game industry from **1980 to 2020**. The primary objective was to clean raw data, restructure tables for multi-dimensional analysis, and build an interactive dashboard to track regional sales, platform lifecycles, and publisher performance.

## 🚀 Key Accomplishments
* **Data Engineering:** Processed **16,500+ records** in SQL Server, utilizing **Unpivot** techniques to optimize sales analysis across 4 global regions.
* **Market Insights:** Identified trends across **570+ publishers**, analyzing the correlation between game volume and global total sales.
* **BI Visualization:** Built an interactive **Power BI dashboard** to visualize 4 decades of gaming industry evolution through dynamic reports.

## 🛠️ Tech Stack
* **Database:** Microsoft SQL Server (T-SQL)
* **ETL/Data Engineering:** BULK INSERT, UNION ALL (Unpivot)
* **Visualization:** Power BI Desktop

## 📂 Data Pipeline
### 1. Data Cleaning & Transformation (SQL)
Raw CSV data was ingested into SQL Server via `BULK INSERT`. The data was then transformed from a wide format to a long format (Normalized) using the `UNION ALL` technique to enable flexible filtering in Power BI:

```sql
-- Full SQL script for data normalization
SELECT game_name, platform, year_produced, genre, game_publisher, sales_na AS sales, 'North America' AS region
FROM vgsales_master_table
UNION ALL
SELECT game_name, platform, year_produced, genre, game_publisher, sales_eu AS sales, 'EU' AS region
FROM vgsales_master_table
UNION ALL
SELECT game_name, platform, year_produced, genre, game_publisher, sales_jp AS sales, 'Japan' AS region
FROM vgsales_master_table
UNION ALL
SELECT game_name, platform, year_produced, genre, game_publisher, sales_other AS sales, 'Other' AS region
FROM vgsales_master_table;
<img width="1659" height="933" alt="image" src="https://github.com/user-attachments/assets/c0aa385c-f176-42ca-8755-ebc65fdf367e" />
