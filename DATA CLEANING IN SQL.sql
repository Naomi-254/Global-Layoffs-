-- DATA CLEANING


SELECT *
FROM layoffs;

-- 1.Remove Duplicates
-- 2.Standardize the Data
-- 3.Null values or blank values
-- 4.Remove unnecessary columns

CREATE TABLE layoffs_staging
LIKE  layoffs;

SELECT *
FROM layoffs_staging;

INSERT layoffs_staging
SELECT *
FROM layoffs;


SELECT *,
ROW_NUMBER () OVER(PARTITION BY company, location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) AS row_num
FROM layoffs_staging;

with duplicate_cte as
(SELECT *,
ROW_NUMBER () OVER(PARTITION BY company, location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) AS row_num
FROM layoffs_staging
) 
SELECT *
FROM duplicate_cte
WHERE row_num > 1
;

DELETE 
FROM layoffs_staging2;

CREATE TABLE `layoffs_staging3` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` bigint DEFAULT NULL,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_number` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT *
FROM layoffs_staging3
;

INSERT INTO layoffs_staging3
SELECT *,
ROW_NUMBER () OVER(PARTITION BY company, location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) AS row_num
FROM layoffs_staging;

DELETE
FROM layoffs_staging3
where `row_number` > 1;

SELECT *
FROM layoffs_staging3
where `row_number` > 1;

-- 2.Standardizing Data

SELECT *
FROM layoffs_staging3;

SELECT DISTINCT trim(company)
FROM layoffs_staging3;

UPDATE layoffs_staging3
SET company = TRIM(company);

SELECT DISTINCT industry
FROM layoffs_staging3
order by 1;

SELECT *
FROM layoffs_staging3
WHERE industry LIKE 'Crypto%';

UPDATE layoffs_staging3
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

SELECT DISTINCT location
FROM layoffs_staging3
order by 1;

SELECT DISTINCT country
FROM layoffs_staging3
order by 1;

SELECT DISTINCT country,TRIM(TRAILING '.' FROM country)
FROM layoffs_staging3
order by 1;

UPDATE layoffs_staging3
SET country = TRIM(TRAILING '.' FROM country);

SELECT `date`,
str_to_date(`date` , '%m/%d/%Y')
from layoffs_staging3;

UPDATE layoffs_staging3
SET `date` = str_to_date(`date` , '%m/%d/%Y');


ALTER TABLE layoffs_staging3
MODIFY COLUMN `date` DATE;

-- 3.Null values or blank values

SELECT *
FROM layoffs_staging3
where industry IS NULL
OR industry = ''; 

UPDATE layoffs_staging3
SET industry = NULL
WHERE industry = '';


SELECT *
FROM layoffs_staging3
where company = 'Airbnb';

SELECT *
FROM layoffs_staging3 t1
JOIN layoffs_staging3 t2
   ON t1.company = t2.company
WHERE (t1.industry IS NULL OR t1.industry = '')
AND t2.industry IS NOT NULL;

UPDATE layoffs_staging3 t1
JOIN layoffs_staging3 t2
ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE (t1.industry IS NULL OR t1.industry = '')
AND t2.industry IS NOT NULL;

SELECT *
FROM layoffs_staging3
where total_laid_off IS NULL
AND percentage_laid_off is null;  


-- 4.Remove unnecessary columns

DELETE
FROM layoffs_staging3
where total_laid_off IS NULL
AND percentage_laid_off is null;

ALTER TABLE layoffs_staging3
DROP COLUMN `row_number`;

SELECT *
FROM layoffs_staging3;

