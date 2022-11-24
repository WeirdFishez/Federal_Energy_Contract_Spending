drop table public.energy_contracts 
;
CREATE TABLE IF NOT EXISTS public.energy_contracts 
(       
        naics_description character varying COLLATE pg_catalog."default" NOT NULL,
        product_or_service_code_description character varying COLLATE pg_catalog."default" NOT NULL,
        award_base_action_date character varying COLLATE pg_catalog."default" NOT NULL,
        total_obligated_amount NUMERIC (10, 2)
)   
;
--
-- Import 2016-2021_Energy_contracts.csv file using PgAdmin import 
--
-- Verify data exists 
-- select * from energy_contracts;
