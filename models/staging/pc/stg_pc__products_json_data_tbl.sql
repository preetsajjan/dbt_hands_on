with source as (
    select * from {{ ref('pre_pc__products_json_data_tbl')}}
),

renamed as (
    select 
        {{ dbt_utils.generate_surrogate_key(['product_id'])}} as product_id,
        brand::varchar as brand,
        category::varchar as category,
        color::varchar as color,
        description::varchar as description,
        gender_target::varchar as gender_target,
        inventory_count::varchar as inventory_count,
        material::varchar as material,
        price::varchar as price,
        product_name::varchar as product_name,
        release_date::date as release_date,
        season::varchar as season,
        size::varchar as size

    from source
)

select * from renamed
