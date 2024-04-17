with source as (
    select * from {{ ref('pre_pc__updated_shipments_json_data_tbl')}}
),

renamed as (
    select 
        {{ dbt_utils.generate_surrogate_key(['shipment_id'])}} as shipment_id,
        actual_delivery_date::timestamp as actual_delivery_date,
        carrier::varchar as carrier,
        customer_id::varchar as customer_id,
        estimated_delivery_date::timestamp as estimated_delivery_date,
        order_id::varchar as order_id,
        shipping_cost::float as shipping_cost,
        total_quantity::int as total_quantity,
        tracking_number::int as tracking_number
        
    from source
)

select * from renamed