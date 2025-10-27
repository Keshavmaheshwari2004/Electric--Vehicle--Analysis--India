# Electric-Vehicle-Sales-in-India-
Data Analysis Project: Electric Vehicle Sales in India

## 📘 Overview
This project focuses on analyzing **Electric Vehicle (EV) Sales across Indian States** using multiple data analysis tools such as **Excel, MySQL and Python.

---
## 🧩 Dataset Information
- **File Name:** Electric Vehicle Sales by State in India.csv
- **Columns:**
  - State
  - Year
  - Date
  - Vehicle Class
  - EV Sales Quantity
- **Source:** Government EV registration data

---
## 🧹 Data Cleaning & Preparation
Performed using **Excel & Python (Pandas)**:
- Removed null and duplicate entries.
- Standardized date format to `YYYY-MM-DD`.
- Cleaned and normalized state and vehicle class names.

---
## 🧠 SQL Analysis (MySQL)
**Key Queries:**
1. **Total EV Sales (All Time)**
   ```sql
   SELECT SUM(ev_sales_quantity) AS total_ev_sales
   FROM ev_car.`electric vehicle sales by states in india`;
   ```

2. **Top 10 States (Latest Year)**
   ```sql
   SELECT state, SUM(ev_sales_quantity) AS total_ev_sales
   FROM ev_car.`electric vehicle sales by states in india`
   WHERE year = (SELECT MAX(year) FROM ev_car.`electric vehicle sales by states in india`)
   GROUP BY state
   ORDER BY total_ev_sales DESC
   LIMIT 10;
   ```

3. **Monthly National Sales Trend**
   ```sql
   SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(ev_sales_quantity) AS total_ev_sales
   FROM ev_car.`electric vehicle sales by states in india`
   GROUP BY month ORDER BY month;
   ```

4. **EV Share by Vehicle Class**
   ```sql
   SELECT vehicle_class, SUM(ev_sales_quantity) AS total_ev_sales,
   ROUND(100 * SUM(ev_sales_quantity)/SUM(SUM(ev_sales_quantity)) OVER (), 2) AS pct_share
   FROM ev_car.`electric vehicle sales by states in india`
   GROUP BY vehicle_class
   ORDER BY total_ev_sales DESC;
   ```

---
## 📊 Insights & Findings
- **Top States:** Uttar Pradesh, Maharashtra, and Karnataka lead in EV sales.
- **Growth Trend:** Significant rise in EV adoption post-2020.
- **Vehicle Class:** Two-wheelers dominate EV market share.
- **Policy Impact:** Government incentives and awareness have accelerated growth.

---
---
## ✅ Conclusion
- EV sales are growing rapidly across India.
- Policies, subsidies, and infrastructure are key growth drivers.
- Two-wheelers and passenger vehicles dominate sales.

---
## 🚀 Future Recommendations
- Expand EV charging infrastructure.
- Promote adoption in rural areas.
- Continue incentives and awareness programs.

---
## 🧰 Tools Used
- **Excel:** Data cleaning and formatting
- **MySQL:** Data analysis using SQL queries
- **Python:** Data wrangling and automation
