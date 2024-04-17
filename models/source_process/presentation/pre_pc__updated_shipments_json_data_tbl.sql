with persistent as (
    select * from {{ ref('per_pc__updated_shipments_json_data_tbl') }}
),

presentation as (
    select loaded_at,
        data:"actual_delivery_date" as actual_delivery_date,
        data:"carrier" as carrier,
        data:"customer_id" as customer_id,
        data:"estimated_delivery_date" as estimated_delivery_date,
        data:"order_id" as order_id,
        data:"shipment_id" as shipment_id,
        data:"shipping_cost" as shipping_cost,
        data:"total_quantity" as total_quantity,
        data:"tracking_number" as tracking_number
        
    from persistent
)

select * from presentation