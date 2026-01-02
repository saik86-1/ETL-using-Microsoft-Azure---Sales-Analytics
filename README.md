# ETL-using-Microsoft-Azure---Sales-Analytics

## 📌 Project Overview
This project demonstrates an **end-to-end cloud-based data analytics pipeline** built using **Microsoft Azure**.  
The goal was to ingest raw sales data, clean and transform it, and generate **business-ready KPIs** using SQL — replicating a real-world data analyst workflow.

The project focuses on **data ingestion, ETL, data cleaning, and analytics**, rather than machine learning or complex modeling.

---

## 🏗️ Architecture
**Raw Excel File → Azure Blob Storage → Azure Data Factory → Azure SQL Database → SQL Analytics**

- **Blob Storage**: Raw data ingestion layer  
- **Azure Data Factory**: ETL orchestration  
- **Azure SQL Database**: Cleaned, analytics-ready data  
- **SQL**: KPI calculations and business analysis  

---

## 🛠️ Tools & Technologies
- **Azure Blob Storage**
- **Azure Data Factory (ADF)**
- **Azure SQL Database**
- **SQL (T-SQL)**
- **Microsoft Excel (source data)**

---

## 📂 Dataset
- **Source**: Microsoft Financial Sample dataset  
- **Records**: ~1,400 sales transactions  
- **Fields include**:
  - Sales, Profit, COGS
  - Product, Segment, Country
  - Date, Month, Year
  - Discount Band, Units Sold

---

## 🔄 ETL Process
### 1. Data Ingestion
- Uploaded raw Excel sales data to **Azure Blob Storage**
- Organized data using containers for raw files

### 2. Data Orchestration
- Built **Azure Data Factory pipelines** to move data from Blob Storage to Azure SQL
- Configured **Linked Services** for secure cloud connectivity
- Used **Copy Activity** for automated ingestion

### 3. Data Cleaning & Transformation
- Created a staging table (`sales_raw`) with raw text data
- Built a clean analytics table (`sales_clean`) with:
  - Proper numeric data types
  - Date conversions
  - Renamed columns to remove hidden spaces
- Used `TRY_CONVERT` to safely handle data quality issues

---

## 📈 Analytics & KPIs (SQL)
Key business metrics were calculated using SQL:

- **Total Sales ($)**
- **Total Profit ($)**
- **Profit Margin (%)**
- **Sales by Year**
- **Year-over-Year (YoY) Sales Growth ($ and %)**
- **Top Products by Sales**

KPI Queries:
<img width="1375" height="495" alt="image" src="https://github.com/user-attachments/assets/e52c505a-242c-4929-981a-a64e8a27971f" />

<img width="1375" height="586" alt="image" src="https://github.com/user-attachments/assets/b9d20c1b-fbe2-4a02-91cb-9132a8150df5" />

<img width="1375" height="586" alt="image" src="https://github.com/user-attachments/assets/3d2225cc-1f4f-4122-8273-6819bfb27ff6" />
