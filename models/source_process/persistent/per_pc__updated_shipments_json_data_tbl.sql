{{
    config(
        unique_key='id'
    )
}}

    select * from {{ ref('lnd_pc__updated_shipments_json_data_tbl') }}
