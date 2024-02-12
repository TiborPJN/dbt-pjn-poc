--select 
--        e.reference,
--        e.name,
--        e.received,
--        e.data.wallet_id,
--        e.data.transaction.external_ref_description,
--        e.data.transaction.comment
--    from pjnevents.durable_consumerpaymentwalletupdatedevent e

select e.data.consumer_record_id, e.name, e.received from 
pjnevents.durable_consumerorderscheduledpaymentfailedevent e







