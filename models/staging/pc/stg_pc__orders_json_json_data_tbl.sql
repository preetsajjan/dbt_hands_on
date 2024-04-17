with source as (
    select * from {{ ref('pre_pc__orders_json_json_data_tbl')}}
),

renamed as (
    select 
        {{ dbt_utils.generate_surrogate_key(['order_id'])}} as order_id,
        order_date::varchar as order_date,
        customer_id::varchar as customer_id,
        gift_wrapping::varchar as gift_wrapping,
        item_id::varchar as item_id,
        order_line_id::varchar as order_line_id,
        quantity::int as quantity,
        unit_price::float as unit_price,
        order_source::varchar as order_source,
        order_status::varchar as order_status,
        payment_method::varchar as payment_method,
        shipping_method::varchar as shipping_method
    from source
)

select * from renamed
