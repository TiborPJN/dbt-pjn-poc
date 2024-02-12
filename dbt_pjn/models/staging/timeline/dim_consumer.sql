{{
    config (materialized='table')
}}

with 

source as (

    select * from {{ source('pjnpoc1', 'rds_users_sandbox_pjn_users') }}

),

consumer as (
    SELECT
        consumer_id,
        consumer_first_name,
        consumer_last_name,
        event_name,
        event_received
    FROM 
        (
            SELECT
                u.id AS consumer_id,
                u.first_name AS consumer_first_name,
                u.last_name AS consumer_last_name,
                e.name AS event_name,
                e.received AS event_received 
            FROM source u LEFT JOIN dbt_pjn_poc.stg_durable_CONSUMERORDERACTIVATEDEVENT e on u.id = e.consumer_record_id 
            WHERE u.id = 2212  
            UNION ALL 
            SELECT
                u.id AS consumer_id,
                u.first_name AS consumer_first_name,
                u.last_name AS consumer_last_name,
                e.name AS event_name,
                e.received AS event_received 
            FROM source u LEFT JOIN dbt_pjn_poc.stg_durable_consumerordermanualpaymentfailedevent e on u.id = e.consumer_record_id 
            WHERE u.id = 2212
            UNION ALL 
            SELECT
                u.id AS consumer_id,
                u.first_name AS consumer_first_name,
                u.last_name AS consumer_last_name,
                e.name AS event_name,
                e.received AS event_received 
            FROM source u LEFT JOIN dbt_pjn_poc.stg_durable_consumerorderpaymentsuccessevent e on u.id = e.consumer_record_id 
            WHERE u.id = 2212
            UNION ALL 
            SELECT
                u.id AS consumer_id,
                u.first_name AS consumer_first_name,
                u.last_name AS consumer_last_name,
                e.name AS event_name,
                e.received AS event_received 
            FROM source u LEFT JOIN dbt_pjn_poc.stg_durable_consumerorderrefundedevent e on u.id = e.consumer_record_id 
            WHERE u.id = 2212
            UNION ALL 
            SELECT
                u.id AS consumer_id,
                u.first_name AS consumer_first_name,
                u.last_name AS consumer_last_name,
                e.name AS event_name,
                e.received AS event_received 
            FROM source u LEFT JOIN dbt_pjn_poc.stg_durable_consumerorderscheduledpaymentfailedevent e on u.id = e.consumer_record_id 
            WHERE u.id = 2212
        )
        ORDER BY event_received
        
)

select * from consumer 