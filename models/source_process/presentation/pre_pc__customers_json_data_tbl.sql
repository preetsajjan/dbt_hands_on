with persistent as (
    select * from {{ ref('per_pc__customers_json_data_tbl') }}
),

presentation as (
    select
        loaded_at,
        data:id as id,
        data:address_line as address_line,
        data:city as city,
        data:country as country,
        data:first_name as first_name,
        data:last_name as last_name,
        data:last_updated as last_updated,
        data:state as state,
        data:zip as zip
    from persistent
)

select * from presentation