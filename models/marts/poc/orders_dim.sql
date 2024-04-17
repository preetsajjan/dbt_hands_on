with orders as (
    select * from {{ ref('stg_pc__orders_json_json_data_tbl') }}
)

select * from orders