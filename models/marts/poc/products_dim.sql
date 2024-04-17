with products as (
    select * from {{ ref('stg_pc__products_json_data_tbl') }}
)

select * from products