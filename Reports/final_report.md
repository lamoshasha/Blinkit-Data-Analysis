# 📊 Sweetviz Automated EDA Report

This folder contains the automated exploratory data analysis (EDA) report generated using the Sweetviz library.

# 📁 Contents

* `report.html` → Interactive HTML report generated using Sweetviz
* `figures/sweetviz/` → Key screenshots extracted from the report for documentation
* `final_report.md` → Summary of insights derived from the analysis

## 🧠 About Sweetviz

Sweetviz is a Python library used for **automated exploratory data analysis**.
It helps in quickly understanding the dataset by generating visual insights such as:

* Feature distributions
* Missing values analysis
* Correlation between variables
* Target variable analysis
* Data type detection

---

## ⚙️ How the Report Was Generated

```python
import pandas as pd
import sweetviz as sv

# Load cleaned dataset
df = pd.read_csv('../data/processed/sales_cleaned.csv')

# Generate report
report = sv.analyze(df, target_feat='Sales')

# Save report
report.show_html('../reports/sweetviz_report.html')
```

---

## 👀 How to View the Report

1. Download the repository
2. Navigate to the `reports/` folder
3. Open `sweetviz_report.html` in any web browser (Chrome recommended)

---

## 📌 Key Insights Covered

* Sales distribution across item types
* Impact of item fat content on sales
* Outlet performance comparison
* Feature correlations influencing sales
* Identification of missing or inconsistent data

---

## 🏆 Purpose

This report was created to:

* Perform quick and efficient EDA
* Identify patterns and anomalies in the dataset
* Support further analysis and visualization

