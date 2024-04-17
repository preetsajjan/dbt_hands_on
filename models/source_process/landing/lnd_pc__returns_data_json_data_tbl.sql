with
source as (
    select * from {{ source('poc', 'RETURNS_DATA_JSON_DATA_TBL') }}
),

pulled_id as (
    select
        md5(data:"customer_id"::varchar)  as id,
        data                                 as data,
        current_timestamp()                  as loaded_at
    from source
)

select * from pulled_id