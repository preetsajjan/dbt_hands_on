with persistent as (
    select * from {{ ref('per_pc__products_json_data_tbl') }}
),

presentation as (
    select
        loaded_at,
        data:"brand" as brand,
        data:"category" as category,
        data:"color" as color,
        data:"description" as description,
        data:"gender_target" as gender_target,
        data:"inventory_count" as inventory_count,
        data:"material" as material,
        data:"price" as price,
        data:"product_id" as product_id,
        data:"product_name" as product_name,
        data:"release_date" as release_date,
        data:"season" as season,
        data:"size" as size

    from persistent
)

select * from presentation
