# 📂 Data Directory

This folder contains the datasets used in the Blinkit Sales Data Analysis project.
It is organized into two main parts: **raw data** and **processed data**.

---

## 📁 Folder Structure

```
data/
│
├── raw/                # Original dataset (unaltered)
│   └── BlinkIT Grocery Data.csv
│
├── processed/          # Cleaned and transformed dataset
│   └── sales_cleaned.csv
```

---

## 🧾 Raw Data

* **File:** `BlinkIT Grocery Data.csv`

* **Description:**
  This is the original dataset containing sales data for Blinkit grocery items.
  It includes information such as item type, fat content, outlet details, and sales.

* **Usage:**
  The raw dataset is preserved in its original form and is **not modified** to ensure data integrity.

---

## ⚙️ Processed Data

* **File:** `sales_cleaned.csv`

* **Description:**
  This dataset is the result of data cleaning and preprocessing performed using Python.

* **Key Transformations:**

  * Handled missing values (e.g., `Item Weight`, `Outlet Size`)
  * Standardized categorical values (e.g., Low Fat, Regular)
  * Removed inconsistencies and duplicates
  * Converted data types for accurate analysis

* **Usage:**
  This dataset is used for:

  * Exploratory Data Analysis (EDA)
  * SQL queries
  * Power BI dashboard creation
  * Visualization and reporting

---

## 🔄 Data Workflow

```
Raw Data → Data Cleaning (Python) → Processed Data → Analysis & Visualization
```
---

## 🎯 Purpose

This structured approach ensures:

* Data transparency
* Reproducibility of results
* Clear separation between raw and cleaned data

---

