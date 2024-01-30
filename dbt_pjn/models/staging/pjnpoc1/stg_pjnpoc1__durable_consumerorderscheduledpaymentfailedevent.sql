with 

source as (

    select * from {{ source('pjnpoc1', 'durable_consumerorderscheduledpaymentfailedevent') }}

),

renamed as (

    select
        data,
        source_component,
        source_db_urn,
        created,
        received,
        origin_event_id,
        type,
        version,
        reference,
        message_group,
        source_module,
        name,
        reference_note,
        id,
        source_environment,
        status,
        partition_0,
        partition_1,
        partition_2,
        partition_3

    from source

)

select * from renamed
