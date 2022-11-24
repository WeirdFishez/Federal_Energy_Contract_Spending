drop table energy_contracts_monthly_indices
;
create table energy_contracts_monthly_indices as 
select i.month, i.energy as energy_monthly_indices, 
   c.naics_description, c.product_or_service_code_description,
   c.total_obligated_amount 
from energy_contracts as c,
cmo_monthly_indices i
where i.month = c.award_base_action_date 
;
