drop table top_20_energy_contracts_by_contract_amount
;
create table top_20_energy_contracts_by_contract_amount as 
select i.month, i.energy as energy_monthly_indices,
   sum(c.total_obligated_amount) as total_contract_amount 
from energy_contracts as c,
cmo_monthly_indices i
where i.month = c.award_base_action_date 
group by i.month, i.energy 
order by  sum(c.total_obligated_amount) desc 
limit 20
;
