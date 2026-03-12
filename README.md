# Automotive R&D Intelligence — EV Transition & Sustainability Analytics

**Python | SQL | Machine Learning | Tableau | ESG Analytics**
[Live Tableau Dashboard](https://public.tableau.com/app/profile/neha.tg/viz/Automotive-RD-Intelligence/Dashboard1)

---

## Why I Built This

I spent two years at Mercedes-Benz R&D India working on data pipelines and reconciliation workflows across half a million records. When I moved to the UK to do my MSc in Business Analytics at Surrey, I wanted to build something that actually reflected the kind of work I'd done in industry — not just a textbook exercise.

The automotive industry is going through a massive shift right now. Every OEM is trying to figure out EV transition, sustainability reporting, and what that means for their data infrastructure. I wanted to build a project that sat right at the centre of that.

So I took a real dataset of 558,837 vehicle transactions and built an end-to-end analytics solution — from raw data ingestion all the way through to an interactive Tableau dashboard, with machine learning and sustainability analysis in between.

---

## What This Project Does

I started with messy raw data and built a Python pipeline that cleans, validates and loads it into a SQLite database — the same kind of logic I used to build at MBRDI for Azure workflows. After cleaning, I retained 541,798 records (96.95% data quality).

From there I ran SQL-based KPI analysis across four business dimensions: market share by segment, price depreciation curves, brand premium index, and vehicle condition impact. Then I trained three machine learning models to predict resale price — Gradient Boosting came out on top with 97.5% accuracy (R² = 0.975, RMSE = $1,527 across 530,000 records).

The part I found most interesting was the sustainability layer. I modelled annual CO₂ emissions by powertrain type and mapped them against UK ZEV mandate targets. The compliance gap is 32.99% — which tells you a lot about where the industry actually is versus where the government expects it to be.

Finally I pulled everything into a Tableau dashboard with four views: sales overview, price depreciation, market share, and CO₂ by powertrain.

---

## Key Findings

- Ford and Chevrolet dominate volume but Mercedes-Benz and BMW lead on price premium
- A vehicle loses roughly half its value between age 12 and age 18 — the depreciation curve is steeper than most people assume
- Gradient Boosting predicted resale price with 97.5% accuracy — MMR market value was by far the strongest feature
- ICE vehicles generate around 2,085 kg CO₂ per year vs 1,378 kg for Hybrids and 0 for EVs
- The UK fleet is 32.99% behind ZEV mandate targets — there is a huge gap between policy ambition and actual adoption

---
![Market Overview](market_overview.png)
![ML Model](ml_model.png)
![Sustainability](sustainability.png)

---

## Tech Stack

| What | Why |
|---|---|
| Python (Pandas, NumPy) | Data pipeline, cleaning, feature engineering |
| SQLite + SQL | KPI analysis, reconciliation, structured querying |
| Scikit-learn | Price prediction — tested Linear Regression, Random Forest, Gradient Boosting |
| Matplotlib, Seaborn | Exploratory charts, sustainability visualisations |
| Tableau Public | Interactive dashboard — live link above |
| Jupyter + VSCode | Development environment |

---

## Project Structure

```
automotive_rd_intelligence/
│
├── data/
│   ├── raw/                    # Original datasets
│   ├── clean/                  # Validated data
│   └── processed/              # Analytics-ready CSVs
│
├── outputs/
│   ├── charts/                 # Exported visualisations
│   ├── kpi_reports/            # SQL KPI output CSVs
│   └── tableau/                # Tableau-ready data exports
│
├── database/
│   └── automotive_rd.db        # SQLite database
│
├── models/
│   └── price_prediction_model.pkl
│
└── automotive_rd_intelligence.ipynb
```

---

## Datasets

| Dataset | Size | Source |
|---|---|---|
| Vehicle Sales & Pricing | 558,837 transactions | Kaggle |
| Auto MPG & Engine Specs | 398 vehicles | Kaggle |
| Fuel Economy Data | Multi-year | fueleconomy.gov |
| UK EV Charging Statistics | Jan 2024 | UK Government |

---

## How to Run It

```
git clone https://github.com/NehaTG/automotive-rd-intelligence.git
cd automotive-rd-intelligence
pip install pandas numpy matplotlib seaborn scikit-learn jupyter
jupyter notebook automotive_rd_intelligence.ipynb
```

Run the cells in order — each section builds on the previous one.

---

## Background

I'm Neha — a Business Analytics professional based in Warwick, UK.

Before my MSc I worked for two years as a Business Analyst at Mercedes-Benz R&D India, where I built Python automation pipelines, managed Azure data workflows, and handled reconciliation across 500,000+ records. I also co-invented a patent for an intelligent system for automated data-driven content transmission.

I'm currently looking for Data Analyst or Business Analyst roles in the UK. I'm on a Graduate Route visa so no sponsorship needed.

📧 tgneha05@gmail.com
🔗 LinkedIn: linkedin.com/in/neha-tg-04b615229
📍 Guildford, UK

---

*If you have any questions about the methodology or want to talk through the project, feel free to reach out.*
