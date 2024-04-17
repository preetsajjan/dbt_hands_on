{{
    config(
        unique_key='id'
    )
}}


select * from  {{ ref('lnd_pc__orders_json_json_data_tbl') }}