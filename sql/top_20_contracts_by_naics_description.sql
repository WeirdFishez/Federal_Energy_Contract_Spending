drop table top_20_contracts_by_naics_description
;
create table top_20_contracts_by_naics_description as 
select i.month, i.energy, c.naics_description, sum(c.total_obligated_amount) as contract_amount 
from energy_contracts as c,
cmo_monthly_indices i
where i.month = c.award_base_action_date
group by i.month, i.energy, c.naics_description
order by sum(c.total_obligated_amount) desc 
limit 20
;
