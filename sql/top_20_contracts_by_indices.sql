drop table top_20_energy_contracts_by_indices
;
create table top_20_energy_contracts_by_indices as 
select i.month, i.energy as energy_monthly_indices,
   sum(c.total_obligated_amount) as total_contract_amount
from energy_contracts as c,
cmo_monthly_indices i
where i.month = c.award_base_action_date
group by i.month, i.energy
order by  i.energy desc
limit 20
;
