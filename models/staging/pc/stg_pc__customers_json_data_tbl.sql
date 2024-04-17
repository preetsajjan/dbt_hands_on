with source as (
    select * from {{ ref('pre_pc__customers_json_data_tbl')}}
),

renamed as (
    --data types assigned to all columns
    --columns ordered
    select 
        {{ dbt_utils.generate_surrogate_key(['id'])}} as customer_id,  --formulas added, columns renamed
        address_line::varchar      as address,
        -- city::varchar           --unwanted columns not carried through
        -- country::varchar        --unwanted columns not carried through
        first_name::varchar        as first_name,
        last_name::varchar         as last_name,
        state::varchar             as state,
        zip::varchar               as zip_code,
        last_updated::timestamp_ntz as last_updated_at,
        loaded_at::timestamp_ntz   as loaded_at
    from source
)

select * from renamed