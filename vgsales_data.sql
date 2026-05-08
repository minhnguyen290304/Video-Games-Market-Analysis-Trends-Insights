-- 1. Tạo Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'vgsales_db')
BEGIN
    CREATE DATABASE vgsales_db;
END
GO

USE vgsales_db;
GO

-- 2. Xóa bảng cũ nếu có
DROP TABLE IF EXISTS vgsales_master_table;
GO

-- 3. Tạo bảng 
CREATE TABLE vgsales_master_table (
    game_rank INTEGER PRIMARY KEY,
    game_name NVARCHAR(200),
    platform NVARCHAR(100),
    year_produced VARCHAR(4),
    genre NVARCHAR(100),
    game_publisher NVARCHAR(100),
    sales_na DECIMAL(18, 2),
    sales_eu DECIMAL(18, 2),
    sales_jp DECIMAL(18, 2),
    sales_other DECIMAL(18, 2),
    sales_global DECIMAL(18, 2)
);
GO

-- 4. Import dữ liệu từ CSV
BULK INSERT vgsales_master_table
FROM 'C:\Users\minhn\Downloads\vgsales.csv' 
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    MAXERRORS = 1000, 
    TABLOCK
);
GO

-- 5. Truy vấn Unpivot 
SELECT * FROM
(
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
    FROM vgsales_master_table
) AS master_table;