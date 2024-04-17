{{
    config(
        unique_key='id'
    )
}}

    select * from {{ ref('lnd_pc__customers_json_data_tbl') }}
