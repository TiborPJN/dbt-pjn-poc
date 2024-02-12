{{
    config (materialized='table')
}}

select 
    e.data.consumer_record_id, e.name, e.received 
from 
    pjnevents.durable_consumerorderactivatedevent e
