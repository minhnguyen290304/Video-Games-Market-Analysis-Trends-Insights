# 🎮 Video Games Market Insights & Trends Analysis

## 🎯 Project Overview
This project provides an end-to-end analysis of the global video game industry from **1980 to 2020**.

The main objective is to transform raw data into actionable insights by:
- Cleaning and restructuring datasets  
- Enabling multi-dimensional analysis  
- Building an interactive dashboard to track:
  - Regional sales performance  
  - Platform lifecycle trends  
  - Publisher performance  

---

## 🚀 Key Accomplishments
- **Data Engineering:** Processed **16,500+ records** in SQL Server, applying **UNPIVOT (via UNION ALL)** to optimize sales analysis across 4 global regions  
- **Market Analysis:** Analyzed **570+ publishers**, identifying correlations between game volume and global revenue  
- **Dashboard Development:** Built an interactive **Power BI dashboard** visualizing 40 years of industry evolution  

---

## 🛠️ Tech Stack
- **Database:** Microsoft SQL Server (T-SQL)  
- **ETL / Data Engineering:** BULK INSERT, Data Normalization, UNION ALL (Unpivot)  
- **Visualization:** Power BI Desktop  

---

## 📁 Dataset Description

The dataset includes:
- Game Name  
- Platform  
- Genre  
- Publisher  
- Regional Sales (NA, EU, JP, Others)  
- Global Sales  

---

## 📂 Data Pipeline

### 1. Data Cleaning & Transformation (SQL)
- Imported raw CSV data using `BULK INSERT`  
- Transformed dataset from **wide format → normalized format** for flexible analysis  

#### Example: UNPIVOT using UNION ALL
```sql
SELECT game_name, platform, 'North America' AS region, sales_na AS sales
FROM vgsales_master_table

UNION ALL

SELECT game_name, platform, 'EU' AS region, sales_eu AS sales
FROM vgsales_master_table;
```

## 📊 Data Visualization (Power BI)

<img width="1662" height="916" alt="image" src="https://github.com/user-attachments/assets/19bc2e35-b63b-4bd9-82e7-210f02b322c5" />



The dashboard includes:

### Global KPIs
- **Total Sales:** 8.82 billion units  
- **Total Games Released:** 11.4K  

### Market Share
- Treemap of **Top 10 Platforms**

### Publisher Performance
- Scatter plot: **Game volume vs Revenue**

### Growth Trends
- Area chart tracking **40 years of industry evolution**

---

## 📊 Key Insights
- 🎮 **Platform Leaders:** PS2, PS3, and Nintendo DS generated the highest historical revenue  
- 📈 **Genre Trends:** Action and Sports remained consistently popular across decades  
- 🚀 **Market Peak:** The industry experienced rapid growth during **2005–2010**  

---

## 💡 Future Improvements
- Apply **machine learning models** for sales prediction  
- Enhance **feature engineering** (e.g., platform lifecycle analysis)  
- Automate ETL pipeline  
- Integrate real-time or updated datasets  

---

## 📌 Project Highlights
- End-to-end workflow: **ETL → Analysis → Visualization**  
- Strong focus on **data modeling & normalization**  
- Business-driven insights for **market trend analysis**  
