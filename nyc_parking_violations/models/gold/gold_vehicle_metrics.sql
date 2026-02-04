select
    registration_state,
    count(summons_number) as ticket_count
from {{ref('silver_violation_vehicles')}}
where 
    registration_state != 'NY' -- Exclude New York registrations to focus on out-of-state vehicles
group by 
    registration_state
order by
    ticket_count desc