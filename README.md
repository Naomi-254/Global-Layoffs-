# Global Tech Layoffs & Financial Resilience Analysis (SQL + Power BI)

> **Executive Summary:** A comprehensive end-to-end analysis of 3,000+ global layoff events (2020-2023). Key finding: Top tech firms laid off ~380k employees despite raising nearly $900B in funding, signaling a shift from "growth at all costs" to "operational efficiency."

---

## 🛠️ Data Engineering & Cleaning (SQL Focus)
Before visualization, I performed a rigorous 5-step cleaning process in **SQL** to ensure data reliability:
*   **Deduplication:** Used `CTE` and `ROW_NUMBER()` to identify and remove redundant records.
*   **Standardization:** Normalized industry names (e.g., merging "Crypto Currency" and "Crypto") for accurate grouping.
*   **Null Handling:** Executed logic to populate missing 'Total Laid Off' values based on 'Percentage' and 'Company Size' where applicable.
*   **Temporal Scaling:** Converted disparate date formats into a standard `YYYY-MM-DD` for time-series analysis.

## 📈 Strategic Business Insights

### 1. The "Post-Pandemic" Surge (2022-2023)
*   **Data:** Layoffs peaked in 2022 (**160k+**) and 2023 (**125k+**), dwarfing the initial 2020 COVID-19 shock.
*   **Insight:** The "bubble" burst wasn't caused by the pandemic itself, but by over-hiring during the 2021 recovery period.

### 2. The Hub Vulnerability
*   **Data:** The **San Francisco Bay Area** suffered 109k layoffs—more than double any other global tech hub.
*   **Insight:** High-cost-of-living regions were the first targets for corporate cost-cutting as companies shifted toward remote or lower-cost talent markets.

### 3. Financial Resilience vs. Workforce Reduction
*   **Data:** Companies raised a combined **$898B** while simultaneously executing mass layoffs.
*   **Insight:** Layoffs were **strategic**, not desperate. Large-cap firms (Amazon, Meta, Google) used the economic downturn to pivot toward automation and AI-centric workflows.

---

## 📊 Visual Gallery
*(Replace with your actual GitHub image links)*
![Yearly Trends](https://github.com/user-attachments/assets/fe49a743-7b08-41bb-997c-3570d725a35d)
![Industry Impact](https://github.com/user-attachments/assets/9168a34c-b234-44ca-b4df-f53c2bad596e)

---

## 🚀 Recommendations
*   **For Talent Acquisition:** Focus on "Safe Haven" sectors like Healthcare and Finance, which showed 40% more resilience than Consumer/Retail.
*   **For Corporate Strategy:** Adopt "Agile Staffing" models to avoid the massive 2022 over-correction.
*   **For Job Seekers:** Prioritize "AI-Adjacent" skills, as the data suggests companies are replacing administrative roles with automated systems.

## 📂 Project Repository Structure
*   `/SQL_Queries/`: Advanced cleaning and EDA scripts.
*   `/PowerBI_Report/`: Interactive `.pbix` file.
*   `/Documentation/`: Detailed data dictionary and cleaning log.

