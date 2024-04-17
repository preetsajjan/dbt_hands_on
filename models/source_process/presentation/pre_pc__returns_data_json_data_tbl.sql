with persistent as (
    select * from {{ ref('per_pc__returns_data_json_data_tbl') }}
),

presentation as (
    select
        loaded_at,
        data:"customer_id" as customer_id,
        data:"order_date" as order_date,
        data:"order_id" as order_id,
        data:"return_date" as return_date,
        data:"return_id" as return_id,
        data:"order_lines.gift_wrapping" as gift_wrapping,
        data:"order_lines.item_id" as item_id,
        data:"order_lines.order_line_id" as order_line_id,
        data:"order_lines.quantity" as quantity,
        data:"order_lines.return_order_line_id" as return_order_line_id,
        data:"order_lines.unit_price" as unit_price,
        data:"returned_status" as returned_status
        
    from persistent
)

select * from presentation