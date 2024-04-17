{{
    config(
        unique_key='id'
    )
}}


select * from  {{ ref('lnd_pc__products_json_data_tbl') }}