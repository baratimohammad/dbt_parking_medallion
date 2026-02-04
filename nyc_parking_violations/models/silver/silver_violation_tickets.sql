select
    spv.summons_number,
    spv.issue_date,
    spv.violation_code,
    spv.is_manhattan_96th_st_below,
    spv.issuing_agency,
    spv.violation_location,
    spv.issuer_precinct,
    spv.issuer_code,
    spv.issuer_command,
    spv.issuer_squad,
    spv.violation_time,
    spv.violation_county,
    spv.violation_legal_code,
    code.fee_usd
from {{ref('silver_parking_violations')}} as spv 
left join {{ref('silver_parking_violation_codes')}} as code
on spv.violation_code = code.violation_code and spv.is_manhattan_96th_st_below = code.is_manhattan_96th_st_below