{{
    config(
        unique_key='id'
    )
}}

    select * from {{ ref('lnd_pc__returns_data_json_data_tbl') }}
