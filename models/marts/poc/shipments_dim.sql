with shipments as (
    select * from {{ ref('stg_pc__shipments_json_data_tbl') }}
)

select * from shipments