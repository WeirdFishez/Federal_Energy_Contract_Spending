drop table public.cmo_monthly_indices
;
CREATE TABLE IF NOT EXISTS public.cmo_monthly_indices
(       
        Month character varying COLLATE pg_catalog."default" NOT NULL,
        Energy NUMERIC (10, 2),
        Non_Energy  NUMERIC (10, 2),
        Agriculture NUMERIC (10, 2),
        Agriculture_Beverages  NUMERIC (10, 2),
        Agriculture_Food  NUMERIC (10, 2),
        Agriculture_Oils_Meals  NUMERIC (10, 2),
        Agriculture_Grains  NUMERIC (10, 2), 
        Agriculture_Other_Food  NUMERIC (10, 2),
        Raw_Materials  NUMERIC (10, 2),
        Raw_Materials_Timber  NUMERIC (10, 2),
        Raw_Materials_Other  NUMERIC (10, 2),
        Fertilizers NUMERIC (10, 2), 
		Metals_Minerals  NUMERIC (10, 2),
        Metals_Minerals_Base_Metals  NUMERIC (10, 2),
        Precious_Metal  NUMERIC (10, 2),
        CONSTRAINT cmo_monthly_indices__pkey PRIMARY KEY (Month)
)   
;
--
-- Import clean_indices.csv file using PgAdmin import 
--
-- Verify data exists 
-- select * from cmo_monthly_indices;
