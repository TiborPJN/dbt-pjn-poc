{{
    config (materialized='table')
}}

select 
        e.reference,
        e.name,
        e.received,
        e.data.transaction.external_ref_description,
        e.data.transaction.comment
    from pjnevents.durable_consumerpaymentwalletupdatedevent e