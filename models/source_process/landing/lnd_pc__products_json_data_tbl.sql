with
source as (
    select * from {{ source('poc', 'PRODUCTS_JSON_DATA_TBL') }}
),

pulled_id as (
    select
        md5(data:"product_id"::varchar) as id,
        data,
        current_timestamp() as loaded_at
    from source
)

select * from pulled_id
