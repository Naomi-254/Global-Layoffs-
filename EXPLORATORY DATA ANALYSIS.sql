-- Exploratory Data Analysis

SELECT *
FROM layoffs_staging3;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging3;

SELECT *
FROM layoffs_staging3
WHERE percentage_laid_off = 1;

SELECT *
FROM layoffs_staging3
WHERE percentage_laid_off = 1
ORDER BY total_laid_off desc;

SELECT *
FROM layoffs_staging3
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions desc;

SELECT company, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY company
order by 2 desc;

SELECT MIN(`date`),MAX(`date`)
FROM layoffs_staging3;

SELECT industry, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY industry 
order by 2 desc;

SELECT country, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY country
order by 2 desc;

SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY YEAR(`date`)
order by 1 desc;

SELECT stage, SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY stage
order by 1 desc;

SELECT company, SUM(percentage_laid_off)
FROM layoffs_staging3
GROUP BY company
order by 2 desc;

SELECT stage, ROUND(AVG(percentage_laid_off),2)
FROM layoffs_staging3
GROUP BY stage
ORDER BY 2 DESC;

SELECT SUBSTRING(`date`,1,7) as `month`, SUM(total_laid_off)
FROM layoffs_staging3
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY SUBSTRING(`date`,1,7)
order by 1   ASC ;


WITH rolling_total AS
(
SELECT SUBSTRING(`date`,1,7) as `month`, SUM(total_laid_off) as total_offs
FROM layoffs_staging3
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY SUBSTRING(`date`,1,7)
order by 1   ASC 
)
SELECT `month`, total_offs, SUM(total_offs) 
OVER(ORDER BY `month`) AS rolling_total
FROM rolling_total;

SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY company, YEAR(`date`)
order by 3  DESC ;

WITH Company_Year (company,years,total_laid_off) AS
(
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging3
GROUP BY company, YEAR(`date`)
), Company_Year_RANK AS
(
SELECT *, 
DENSE_RANK() OVER(PARTITION BY years ORDER BY total_laid_off desc) as ranking
FROM Company_Year
WHERE years IS NOT NULL
)
SELECT *
FROM Company_Year_RANK
WHERE ranking <=5;


















