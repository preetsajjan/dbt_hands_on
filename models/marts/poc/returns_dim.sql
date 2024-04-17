with returns as (
    select * from {{ ref('stg_pc__returns_data_json_data_tbl') }}
)

select * from returns