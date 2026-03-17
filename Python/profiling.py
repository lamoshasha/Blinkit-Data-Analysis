import pandas as pd
import sweetviz as sv

df = pd.read_csv("data/BlinkIT Grocery Data.csv")
# Generate Sweetviz report
# sv.analyze() performs automated exploratory data analysis (EDA)
# It analyzes distributions, correlations, missing values, and feature relationships
report = sv.analyze(df)
# Generate Sweetviz report
# sv.analyze() performs automated exploratory data analysis (EDA)
# It analyzes distributions, correlations, missing values, and feature relationships
report.show_html("report.html")