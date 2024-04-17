with source as (
    select * from {{ ref('pre_pc__returns_data_json_data_tbl')}}
),

renamed as (
    select 
        {{ dbt_utils.generate_surrogate_key(['return_id'])}} as return_id,
        customer_id::varchar as customer_id,
        order_date::timestamp as order_date,
        order_id::varchar as order_id,
        return_date::timestamp as return_date,
        gift_wrapping::varchar as gift_wrapping,
        item_id::varchar as item_id,
        order_line_id::varchar as order_line_id,
        quantity::varchar as quantity,
        return_order_line_id::varchar as return_order_line_id,
        unit_price::varchar as unit_price,
        returned_status::varchar as returned_status
        
    from source
)

select * from renamed