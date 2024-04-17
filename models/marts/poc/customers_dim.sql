with customers as (
    select * from {{ ref('stg_pc__customers_json_data_tbl') }}
)

select * from customers