with persistent as (
    select * from {{ ref('per_pc__orders_json_json_data_tbl') }}
),

presentation as (
    select
        loaded_at,
        data:"customer_id" as customer_id,
        data:"order_date" as order_date,
        data:"order_id" as order_id,
        data:"order_lines.gift_wrapping" as gift_wrapping,
        data:"order_lines.item_id" as item_id,
        data:"order_lines.order_line_id" as order_line_id,
        data:"order_lines.quantity" as quantity,
        data:"order_lines.unit_price" as unit_price,
        data:"order_source" as order_source,
        data:"order_status" as order_status,
        data:"payment_method" as payment_method,
        data:"shipping_method" as shipping_method
    from persistent
)

select * from presentation
